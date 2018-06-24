package demo {

import com.roipeker.utils.adl.ScreenEmulator;
import com.roipeker.utils.adl.collections.DeviceBrands;
import com.roipeker.utils.adl.ui.DeviceUI;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.ui.Keyboard;

import starling.core.Starling;

// swf dimensions are irrelevant for ScreenEmulator :)
[SWF(width="800", height="600", backgroundColor="#232323", frameRate="60")]
public class Boot extends Sprite {

    private var starling:Starling;
    private var screen:ScreenEmulator;

    public function Boot() {
        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;

        screen = ScreenEmulator.instance;
        screen.init(stage, -40, -40, true, ScreenEmulator.ORIENTATION_ANY);
        screen.emulate( DeviceBrands.apple.ipad );

        loaderInfo.addEventListener(Event.COMPLETE, onLoaderInfoComplete);
    }

    private function onLoaderInfoComplete(event:Event):void {
        // For size arguments details, check screen.constrainADLSize()
        starling = new Starling(StarlingRoot, stage, screen.getViewPort());
        starling.stage.stageWidth = screen.stageWidthPoints;
        starling.stage.stageHeight = screen.stageHeightPoints;
        starling.supportHighResolutions = true;
        starling.start();
        starling.stage.color = 0xffffff;

        // this handler has to be called before Starling's stage.resize...
        // so put it before initializing starling, or set a high priority.
        // otherwise, Starling's stage will be 1 step behind.
        stage.addEventListener(Event.RESIZE, onStageResize, false, 1);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
    }

    private function onKeyDown(event:KeyboardEvent):void {
        switch (event.keyCode) {
            case Keyboard.NUMBER_1:
                screen.emulate(DeviceBrands.apple.iphone_x);
                break;
            case Keyboard.NUMBER_2:
                screen.emulate(DeviceBrands.apple.iphone_6_plus);
                break;
            case Keyboard.NUMBER_3:
                screen.emulate(DeviceBrands.apple.iphone_5);
                break;
            case Keyboard.NUMBER_4:
                screen.emulate(DeviceBrands.apple.ipad_air_2);
                break;
            case Keyboard.NUMBER_5:
                screen.emulate(DeviceBrands.apple.ipad_pro_10_5_2017);
                break;
            case Keyboard.NUMBER_6:
                screen.emulate(DeviceBrands.apple.ipad_pro_12_9_2017);
                break;
            case Keyboard.NUMBER_7:
                screen.emulate(DeviceBrands.google.pixel);
                break;
            case Keyboard.NUMBER_8:
                screen.emulate(DeviceBrands.htc.one);
                break;
            case Keyboard.NUMBER_9:
                screen.emulate(DeviceBrands.samsung.google_nexus_10_p8110);
                break;
            case Keyboard.NUMBER_0:
                screen.emulate(DeviceBrands.samsung.galaxy_note_3);
                break;
            case Keyboard.SPACE:
                if (stage.autoOrients) {
                    screen.isLandscape() ? screen.portrait() : screen.landscape();
                }
                break;
            case Keyboard.D:
                DeviceUI.instance.debugIPhoneXSize = !DeviceUI.instance.debugIPhoneXSize;
                break;
            case Keyboard.S:
                DeviceUI.instance.showStatusbar = !DeviceUI.instance.showStatusbar;
                break;
            case Keyboard.N:
                DeviceUI.instance.showNavbar = !DeviceUI.instance.showNavbar;
                break;
        }
    }

    private function onStageResize(event:Event):void {
        if (starling) {
            screen.getViewPort(starling.viewPort);
            starling.stage.stageWidth = screen.stageWidthPoints;
            starling.stage.stageHeight = screen.stageHeightPoints;
        }
    }
}
}
