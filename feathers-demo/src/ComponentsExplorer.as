package {
import com.roipeker.utils.adl.ScreenEmulator;
import com.roipeker.utils.adl.collections.DeviceBrands;
import com.roipeker.utils.adl.ui.DeviceUI;

import feathers.examples.componentsExplorer.Main;
import feathers.system.DeviceCapabilities;
import feathers.utils.ScreenDensityScaleFactorManager;

import flash.display.Loader;
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageOrientation;
import flash.display.StageScaleMode;
import flash.display3D.Context3DProfile;
import flash.display3D.Context3DRenderMode;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.filesystem.File;
import flash.filesystem.FileMode;
import flash.filesystem.FileStream;
import flash.system.Capabilities;
import flash.ui.Keyboard;
import flash.utils.ByteArray;
import flash.utils.setTimeout;

import starling.core.Starling;

[SWF(width="960", height="640", frameRate="60", backgroundColor="#4a4137")]
public class ComponentsExplorer extends Sprite {

    public function ComponentsExplorer() {
        if (this.stage) {
            this.stage.scaleMode = StageScaleMode.NO_SCALE;
            this.stage.align = StageAlign.TOP_LEFT;
            _screen = ScreenEmulator.instance;
            _screen.addEventListener(Event.CHANGE, onDeviceChanged);
            _screen.emulate(DeviceBrands.apple.iphone_6);
            _screen.init(stage, 0, 0, true);
        }
        this.mouseEnabled = this.mouseChildren = false;
        this.showLaunchImage();
        this.loaderInfo.addEventListener(Event.COMPLETE, loaderInfo_completeHandler);
    }

    private var _screen:ScreenEmulator;
    private var _starling:Starling;
    private var _scaler:ScreenDensityScaleFactorManager;
    private var _launchImage:Loader;
    private var _savedAutoOrients:Boolean;

    /**
     * On iOS, add the native launch image to the classic display list to
     * avoid displaying only the stage background color between when the
     * AIR app finishes launching and Starling starts rendering.
     *
     * Launch image names: https://forums.adobe.com/message/9986239#9986239
     */
    private function showLaunchImage():void {
        var filePath:String = null;
        var isPortraitOnly:Boolean = false;
        var isIOS:Boolean;
        var resolutionX:Number;
        var resolutionY:Number;
        // we change logic to use ScreenEmulator here...
        if (AppHelper.isADL && _screen.device) {
            isIOS = _screen.device.isIOS;
            resolutionX = _screen.device.w;
            resolutionY = _screen.device.h;
        } else {
            isIOS = Capabilities.manufacturer.indexOf("iOS") >= 0;
            resolutionX = Capabilities.screenResolutionX;
            resolutionY = Capabilities.screenResolutionY;
        }
        if (isIOS) {
            var isPortraitUpsideDown:Boolean = this.stage.orientation == StageOrientation.UPSIDE_DOWN;
            var isPortrait:Boolean = this.stage.orientation == StageOrientation.DEFAULT || isPortraitUpsideDown;
            var isLandscapeRight:Boolean = this.stage.orientation == StageOrientation.ROTATED_RIGHT;
            if (resolutionX == 1242 && resolutionY == 2208) {
                //iphone 6/7/8 plus
                filePath = isPortrait ? "Default-414w-736h@3x~iphone.png" : "Default-Landscape-414w-736h@3x~iphone.png";
            }
            else if (resolutionX == 1125 && resolutionY == 2436) {
                //iphone x
                filePath = isPortrait ? "Default-812h@3x~iphone.png" : "Default-Landscape-812h@3x~iphone.png";
            }
            else if (resolutionX == 2048 && resolutionY == 2732) {
                //ipad pro
                filePath = isPortrait ? "Default-Portrait@2x.png" : "Default-Landscape@2x.png";
            }
            else if (resolutionX == 1536 && resolutionY == 2048) {
                //ipad 3/air
                if (isPortraitUpsideDown) {
                    filePath = "Default-Portrait@2x~ipad.png";
                }
                else if (isPortrait) {
                    filePath = "Default-PortraitUpsideDown@2x~ipad.png";
                }
                else if (isLandscapeRight) {
                    filePath = "Default-LandscapeRight@2x~ipad.png";
                }
                else {
                    filePath = "Default-LandscapeLeft@2x~ipad.png";
                }
            }
            else if (resolutionX == 768 && resolutionY == 1024) {
                //ipad 1/2
                if (isPortraitUpsideDown) {
                    filePath = "Default-Portrait~ipad.png";
                }
                else if (isPortrait) {
                    filePath = "Default-PortraitUpsideDown~ipad.png";
                }
                else if (isLandscapeRight) {
                    filePath = "Default-LandscapeRight~ipad.png";
                }
                else {
                    filePath = "Default-Landscape~ipad.png";
                }
            }
            else if (resolutionX == 750) {
                //iphone 6/7/8
                isPortraitOnly = true;
                filePath = "Default-375w-667h@2x~iphone.png";
            }
            else if (resolutionX == 640) {
                isPortraitOnly = true;
                if (resolutionY == 1136) {
                    //iphone 5/5c/5s
                    filePath = "Default-568h@2x~iphone.png";
                }
                else {
                    //iphone 4/4s
                    filePath = "Default@2x~iphone.png";
                }
            }
            else if (resolutionX == 320) {
                //iphone 3gs
                isPortraitOnly = true;
                filePath = "Default~iphone.png";
            }
        }

        if (filePath) {
            // prepend the directory using while ADL.
            if (AppHelper.isADL) {
                filePath = "launch-images/" + filePath;
            }
            trace('filepath:', filePath);
//            var file:File = File.applicationDirectory.resolvePath(filePath);
            var file:File = AppHelper.appDir.resolvePath(filePath);
            if (file.exists) {
                var bytes:ByteArray = new ByteArray();
                var stream:FileStream = new FileStream();
                stream.open(file, FileMode.READ);
                stream.readBytes(bytes, 0, stream.bytesAvailable);
                stream.close();
                this._launchImage = new Loader();
                this._launchImage.loadBytes(bytes);
                this.addChild(this._launchImage);
                this._savedAutoOrients = this.stage.autoOrients;
                this.stage.autoOrients = false;
                if (isPortraitOnly) {
                    this.stage.setOrientation(StageOrientation.DEFAULT);
                }
            }
        }
    }

    private function loaderInfo_completeHandler(event:Event):void {

        // we have to scale the launchImage (if exists) for ScreenEmulator....
        if (_launchImage) {
            _launchImage.scaleX = _launchImage.scaleY = 1 / ScreenEmulator.instance.densityScale;
        }

        Starling.multitouchEnabled = true;
        this._starling = new Starling(Main, this.stage, null, null, Context3DRenderMode.AUTO, Context3DProfile.BASELINE);
        this._starling.supportHighResolutions = true;
        this._starling.skipUnchangedFrames = true;
        this._starling.start();
        if (this._launchImage) {
            this._starling.addEventListener("rootCreated", starling_rootCreatedHandler);
        }

        if (AppHelper.isADL && _screen.device) {

            // I have to dig into Feathers, but somehow iPad is not being detected as a tablet, propably due to
            // stage dimensions using ScreenEmulator... so we have to LOWER the dpi based on the densityScale.
            DeviceCapabilities.dpi = _screen.device.dpi / _screen.densityScale;


            // if we run an "Apple" emulator, Feathers ScaleFactorManager, detects if its iOS.
            //  Capabilities.version.indexOf("IOS"), so it modifies iPads ... to keep things simpler.
            // we use ScreenEmulator to resize starling.
            this.stage.addEventListener(Event.RESIZE, stage_resize, false, 1, true);
        } else {
            // ScreenEmulator will not use this (density calculation is, mostly, taken from feathers anyway)
            this._scaler = new ScreenDensityScaleFactorManager(this._starling);
        }
        this.stage.addEventListener(Event.DEACTIVATE, stage_deactivateHandler, false, 0, true);
    }

    private function stage_resize(event:Event):void {
        // for now do not use ScreenDensityScaleFactorManager.
        if (_starling) {
            _screen.getViewPort(_starling.viewPort);
            _starling.stage.stageWidth = _screen.stageWidthPoints;
            _starling.stage.stageHeight = _screen.stageHeightPoints;
        }
    }

    private function starling_rootCreatedHandler(event:Object):void {
        setTimeout(removeLaunchImage, 1000);

        // force a stage resize to keep starling UI,
        // or use the proper values during Starling initialization
        stage_resize(null);

        // add DeviceUI.instance later, so it refereshes properly the update.
        DeviceUI.instance.transparentStatusbarBackground = true;
        _starling.stage.addChild(DeviceUI.instance);

        // If someone figures out how to recreate (or update) the
        // entire Main class, please, contribute
        stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKey);
    }

    private function handleKey(event:KeyboardEvent):void {
        switch (event.keyCode) {
            case Keyboard.NUMBER_1:
                _screen.emulate(DeviceBrands.apple.iphone_x);
                break;
            case Keyboard.NUMBER_2:
                _screen.emulate(DeviceBrands.apple.iphone_6_plus);
                break;
            case Keyboard.NUMBER_3:
                _screen.emulate(DeviceBrands.apple.iphone_5);
                break;
            case Keyboard.NUMBER_4:
                _screen.emulate(DeviceBrands.apple.ipad_air_2);
                break;
            case Keyboard.NUMBER_5:
                _screen.emulate(DeviceBrands.apple.ipad_pro_10_5_2017);
                break;
            case Keyboard.NUMBER_6:
                _screen.emulate(DeviceBrands.apple.ipad_pro_12_9_2017);
                break;
            case Keyboard.NUMBER_7:
                _screen.emulate(DeviceBrands.google.pixel);
                break;
        }
    }

    private function onDeviceChanged(event:Event):void {
        // to keep the DPI updated.
        DeviceCapabilities.dpi = _screen.device.dpi / _screen.densityScale;
    }

    private function removeLaunchImage():void {
        if (this._launchImage) {
            this.removeChild(this._launchImage);
            this._launchImage.unloadAndStop(true);
            this._launchImage = null;
            this.stage.autoOrients = this._savedAutoOrients;
        }
    }

    private function stage_deactivateHandler(event:Event):void {
        this._starling.stop(true);
        this.stage.addEventListener(Event.ACTIVATE, stage_activateHandler, false, 0, true);
    }

    private function stage_activateHandler(event:Event):void {
        this.stage.removeEventListener(Event.ACTIVATE, stage_activateHandler);
        this._starling.start();
    }

}
}