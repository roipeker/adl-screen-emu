// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 19/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl {
import flash.display.LoaderInfo;
import flash.display.Stage;
import flash.display.StageAlign;
import flash.display.StageAspectRatio;
import flash.display.StageDisplayState;
import flash.display.StageOrientation;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.StageOrientationEvent;
import flash.geom.Rectangle;
import flash.system.Capabilities;

public class ScreenEmulator extends EventDispatcher {

    public static const ORIENTATION_PORTRAIT:int = 1;
    public static const ORIENTATION_LANDSCAPE:int = 2;
    public static const ORIENTATION_ANY:int = 3;

    private static var _instance:ScreenEmulator;
    public static function get instance():ScreenEmulator {
        if (!_instance) _instance = new ScreenEmulator();
        return _instance;
    }

    // this sets the margin PER SIDE for the max width / height when in default mode.
    // which uses the computer's monitor resolutionX / resolutionY.
    // if your resolution is 1920 x 1080, and ::defaultADLConstrainMargin is 100.
    // the max viewport size will be 1720 x 880.
    // considere that using useDeviceDensityForWindowSize can round up to a small window size.
    // so better use the ::maxADLW, ::maxADLH arguments on init() passing negative (relative) values.
    public static var defaultADLConstrainMargin:uint = 40;

    public static const minADLWindowsSize:uint = 100;

    // to avoid dependencies with Starling-FW
    private static const changeEvent:Event = new Event(Event.CHANGE);

    private var _stage:Stage;

    private var _isADLMobile:Boolean;
    private var monitorResolutionX:Number;
    private var monitorResolutionY:Number;

    private var _sw:int;
    private var _sh:int;

    // device resolution x/y SCALED for the constrained adl window's size.
    private var _adlW:Number;
    private var _adlH:Number;

    // maximum size for adl's native window.
    private var _maxADLW:uint;
    private var _maxADLH:uint;

    private var _device:ScreenSpecifier;

    private var _eventOrientation:String;
    private var _orientating:Boolean;

    // Based on Android buckets.
    public var basePPI:uint = 160;

    // density ratio = pixel perfect scale (not rounded), screen dpi / basePPI
    private var _densityRatio:Number = 1;

    // density scale = assets scale (Android DIP and iOS PT) .75x, 1x, 1.5x, 2x, 3x, 4x
    private var _densityScale:Number = 1;

    private var _densityBuckets:Array;

    // overrides the descriptor configuration.
    private var _customOrientation:int;

    // useful for starling to keep a proper ratio between Starling's stage and viewport.
    private var _useDeviceDensityForWindowSize:Boolean;

    private var _isWindowsOS:Boolean;
    private var _isLoaderInfoComplete:Boolean;

    public function ScreenEmulator() {
    }

    public function init(stage:Stage, maxADLWidth:int = 0, maxADLHeight:int = 0, useDeviceDensityForWindowSize:Boolean = true, customOrientation:int = ORIENTATION_ANY):void {
        if (_stage) {
            trace("ScreenEmulator already initialized.");
            return;
        }
        _stage = stage;

        // required to make the hack work.
        _stage.scaleMode = StageScaleMode.NO_SCALE;
        _stage.align = StageAlign.TOP_LEFT;

        _useDeviceDensityForWindowSize = useDeviceDensityForWindowSize;
        _customOrientation = customOrientation;

        if (!_stage) {
            throw new Error("Stage is required when initializing ScreenEmulator.");
        }

        // TODO: maybe this trick to detect "adl" is not enough.
        _isADLMobile = Capabilities.screenResolutionX != _stage.fullScreenWidth;
        _isWindowsOS = Capabilities.os.indexOf("Windows") > -1;

        monitorResolutionX = Capabilities.screenResolutionX;
        monitorResolutionY = Capabilities.screenResolutionY;

        if (_customOrientation != ORIENTATION_ANY) {
            _stage.autoOrients = false;
        } else {
            _stage.setAspectRatio(StageAspectRatio.ANY);
            _stage.autoOrients = true;
        }

        constrainADLSize(maxADLWidth, maxADLHeight);
        var info:LoaderInfo = stage.loaderInfo.content.loaderInfo;
        _isLoaderInfoComplete = info.contentType != null;
        initDensityBuckets();

        if (!_isLoaderInfoComplete) {
            info.addEventListener(Event.COMPLETE, onLoaderInfoComplete, false, 1000, true);
        } else {
            onLoaderInfoComplete(null);
        }
    }

    private function onLoaderInfoComplete(event:Event):void {
        _stage.addEventListener(Event.RESIZE, onStageResize, true, 100000);
        _stage.addEventListener(StageOrientationEvent.ORIENTATION_CHANGING, onStageOrientationChange, true, 100000);
        _stage.addEventListener(StageOrientationEvent.ORIENTATION_CHANGE, onStageOrientationChange, true, 100000);

        _isLoaderInfoComplete = true;
        // only available AFTER loaderInfoComplete...
        // stage will dispatch a resize event (or 2 if in landscape mode).
        // Force normal stage displayState in order to resize adl window.
        if (_stage.displayState != StageDisplayState.NORMAL) {
            _stage.displayState = StageDisplayState.NORMAL;
        }

        // pending device emulation ?
        if (event) {
            event.currentTarget.removeEventListener(event.type, onLoaderInfoComplete);
        }
        if (_device) {
            calculateDeviceProportion();
            applyDeviceSize();
        }
    }

    private function initDensityBuckets():void {
        if (_densityBuckets) {
            return;
        }
        _densityScale = 1;
        _densityBuckets = [
            {dpi: 120, scale: .75}, // ldpi
            {dpi: 1, scale: 1}, // mdpi
            {dpi: 213, scale: 1.33}, //tvdpi
            {dpi: 240, scale: 1.5}, // hdpi = 720p
            {dpi: 320, scale: 2}, // xhdpi (retina @2x)
            {dpi: 424, scale: 2.6}, // Google devices (nexus/pixel)
            {dpi: 441, scale: 2.626}, // Google pixel
            {dpi: 480, scale: 3}, // xxhdpi
            {dpi: 493, scale: 3.5}, // Google devices (nexus/pixel)
            {dpi: 640, scale: 4} // xxxhdpi = 4k
        ];
    }

    public function get screenDPI():Number {
        return _device ? _device.dpi : Capabilities.screenDPI;
    }

    /**
     *  Constrains the ADL native window size.
     *  for width/height to define the screen BOUNDS:
     *  if the value is lower than 0, it'll use it as a MARGIN for the native monitor resolution.
     *  if the value is lower than ScreenEmulator.minADLWindowsSize, it'll use ScreenEmulator.defaultADLConstrainMargin as MARGIN for the native monitor.
     *  if is bigger than ScreenEmulator.minADLWindowsSize, is used to set the max width/height.
     * @param maxADLWidth
     * @param maxADLHeight
     */
    public function constrainADLSize(maxADLWidth:int = 0, maxADLHeight:int = 0):void {
        var offsetX:int = 0;
        var offsetY:int = 0;

        if (maxADLWidth < 0) {
            offsetX = -maxADLWidth;
        } else if (maxADLWidth <= minADLWindowsSize) {
            offsetX = defaultADLConstrainMargin;
            trace("applying offset:", offsetX , defaultADLConstrainMargin, minADLWindowsSize);
        }

        if (maxADLHeight < 0) {
            offsetY = -maxADLHeight;
        } else if (maxADLHeight <= minADLWindowsSize) {
            offsetY = defaultADLConstrainMargin;
        }
        _maxADLW = offsetX == 0 ? maxADLWidth : monitorResolutionX - offsetX * 2;
        _maxADLH = offsetY == 0 ? maxADLHeight : monitorResolutionY - offsetY * 2;
        trace("monitorResolutionX", _maxADLW, _maxADLH );
    }

    private function onStageOrientationChange(event:StageOrientationEvent):void {
        if (_orientating || !_isADLMobile) return;
        if (!_device) {
            trace("ScreenEmulator can't change orientation without a DeviceSpecifier, call emulate() first.");
            return;
        }
        var invertedOrientation:Boolean = false;
        if (event) {
            event.stopImmediatePropagation();
            event.preventDefault();
            _eventOrientation = event.afterOrientation;
            invertedOrientation = _eventOrientation.indexOf("rotated") > -1;
        } else {
            invertedOrientation = _stage.orientation.indexOf("rotated") > -1;
        }
        if (invertedOrientation) {
            resizeStage(_adlH, _adlW);
        } else {
            resizeStage(_adlW, _adlH);
        }
        _orientating = true;
        _stage.dispatchEvent(event);
        _orientating = false;
    }

    private function onStageResize(event:Event):void {
        // each time we set stage width/height the event is dispatched.
        // So we validate if we reached the desired values.
        if (_sw != _stage.stageWidth || _sh != _stage.stageHeight) {
            event.stopImmediatePropagation();
        }
    }

    /**
     * Main method to emulate a screen definition.
     * @param screen
     */
    public function emulate(screen:ScreenSpecifier) {
        if (screen == null) {
            return;
        }
        if (_device == screen) {
            return;
        }
        _device = screen;
        calculateDensity(_device.dpi);
        if (!_stage) {
            trace("ScreenEmulator warning: remember to call ::init()");
            return;
        }
        calculateDeviceProportion();
        if (_isLoaderInfoComplete) {
            applyDeviceSize();
        }
    }

    private function calculateDeviceProportion():void {

        // keeps the current orientation....
        if (_useDeviceDensityForWindowSize) {
            // todo: simplify the logic, clean the mess.
            var tw:int = _device.w;
            var th:int = _device.h;
            var divider:Number = _densityScale;
            /// device density with @1x, will end on endless loop, so scale down by 50% as minimum.
            if( divider <= 1 ) {
                divider = 2 ;
            }
            if (_customOrientation == ORIENTATION_LANDSCAPE) {
                while (_maxADLH < th || _maxADLW < tw) {
                    th /= divider;
                    tw /= divider;
                }
            } else {
                var smallerCanvas:int = _maxADLH > _maxADLW ? _maxADLH : _maxADLH;
                var biggerDevice:int = _device.w > _device.h ? _device.w : _device.h;
                var val:int = biggerDevice;
                while (val > smallerCanvas) {
                    val /= divider;
                }
                divider = biggerDevice / val;
                tw = _device.w / divider;
                th = _device.h / divider;
            }
            _adlW = tw;
            _adlH = th;
        } else {
            var windowScale:Number;
            if (_customOrientation == ORIENTATION_PORTRAIT || _customOrientation == ORIENTATION_ANY) {
                windowScale = _maxADLH / _device.h;
            } else {
                windowScale = _maxADLH / _device.w;
            }
            _adlW = _device.w * windowScale;
            _adlH = _device.h * windowScale;
        }
    }

    private function applyDeviceSize():void {
        if (hasEventListener(changeEvent.type))
            dispatchEvent(changeEvent);

        if (isLandscape()) {
            resizeStage(_adlH, _adlW);
        } else {
            resizeStage(_adlW, _adlH);
        }
    }

    private function calculateDensity(devicePPI:uint):void {
        _densityRatio = devicePPI / basePPI;

        // calculate using Starling's ScreenSetup method.
        /*if (densityRatio < 1) densityScale = .75;
        else if (densityRatio < 1.25) densityScale = 1;
        else if (densityRatio < 1.75) densityScale = 1.5;
        else densityScale = Math.round(densityRatio);*/

        // using Feathers' ScreenDensityScaleFactorManager approach.
        _densityScale = getDensityScale(devicePPI);
        if (_device.isIOS) {
            // todo: doesn't account for future devices.
            _densityScale = Math.round(_densityScale);
        }
    }

    private function getDensityScale(dpi:uint):Number {
        if (_densityBuckets == null) {
            initDensityBuckets();
        }
        var bucket:Object = _densityBuckets[0];
        if (dpi <= bucket.dpi) {
            return bucket.scale;
        }
        var prevBucket:Object = bucket;
        var len:uint = _densityBuckets.length;
        for (var i:int = 1; i < len; i++) {
            bucket = _densityBuckets[i];
            if (dpi > bucket.dpi) {
                prevBucket = bucket;
                continue;
            }
            var halfDistance:Number = (bucket.dpi + prevBucket.dpi) * .5;
            if (dpi < halfDistance) return prevBucket.scale;
            return bucket.scale;
        }
        return bucket.scale;
    }

    public function resizeStage(sw:int, sh:int):void {
        if( !_stage ){
            return ;
        }
        // when resizing ADL on Windows OS, and using <requestedDisplayResolution>true</requestedDisplayResolution>,
        // seems like adl window's height does not supports odd values.
        // So the RESIZE event is captured and stopped by ScreenEmulator, and never dispatched back.
        if (_isWindowsOS) {
            if (sh % 2 == 1) sh++;
        }
        _sw = sw;
        _sh = sh;
        _stage.stageWidth = sw;
        _stage.stageHeight = sh;
    }

    public function get stageWidthPoints():int {
        return deviceStageWidth / densityScale;
    }

    public function get stageHeightPoints():int {
        return deviceStageHeight / densityScale;
    }

    public function get deviceStageWidth():int {
        if (!_device) return 0;
        return isLandscape() ? _device.h : _device.w;
    }

    public function get deviceStageHeight():int {
        if (!_device) return 0;
        return isLandscape() ? _device.w : _device.h;
    }

    // Useful to scale things on nativeStage for Starling (as contentScaleFactor will fail).
    // like StageText.
    public function get stageScale():Number {
        return viewportWidth / stageWidthPoints;
    }

    public function get stageOrientation():String {
        return _eventOrientation ? _eventOrientation : _stage.orientation;
    }

    public function isLandscape():Boolean {
        if(!_stage) {
            return false ;
        }
        if (_customOrientation == ORIENTATION_LANDSCAPE) return true;
        else if (_customOrientation == ORIENTATION_PORTRAIT) return false;
        else {
            if (_eventOrientation) {
                return _eventOrientation.indexOf("rotated") > -1;
            } else {
                return _stage.orientation != "default";
            }
        }
    }

    public function getDensityScaleForDevice(device:ScreenSpecifier):Number {
        var scale:Number = getDensityScale(device.dpi);
        if (device.isIOS) {
            scale = Math.round(scale);
        }
        return scale;
    }

    public function landscape():void {
        if(!_stage) return ;
        _stage.setOrientation(StageOrientation.ROTATED_LEFT);
    }

    public function portrait():void {
        if(!_stage) return ;
        _stage.setOrientation(StageOrientation.DEFAULT);
    }

    /**
     * Use this value to calculate the appropiate assets.
     */
    public function get densityScale():Number {
        return _densityScale;
    }

    public function get densityRatio():Number {
        return _densityRatio;
    }

    /**
     * utility for Starling
     * @param out   viewport rectangle.
     * @return
     */
    public function getViewPort(out:Rectangle = null):Rectangle {
        if (!out) out = new Rectangle();
        out.width = _sw;
        out.height = _sh;
        return out;
    }

    public function get viewportWidth():uint {
        return _sw;
    }

    public function get viewportHeight():uint {
        return _sh;
    }

    public function get device():ScreenSpecifier {
        return _device;
    }
}
}