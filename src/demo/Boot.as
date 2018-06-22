package demo {

import com.roipeker.utils.adl.ScreenEmulator;
import com.roipeker.utils.adl.collections.ScreenTypesAndroid;
import com.roipeker.utils.adl.collections.ScreenTypesIOS;

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

        loaderInfo.addEventListener(Event.COMPLETE, onLoaderInfoComplete);
    }

    private function onLoaderInfoComplete(event:Event):void {

        screen = ScreenEmulator.instance;

        // For size arguments details, check screen.constrainADLSize()
        screen.init(stage, -20, -20, true, ScreenEmulator.ORIENTATION_ANY);
        screen.emulate(ScreenTypesIOS.iphone_6);

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
                screen.emulate(ScreenTypesIOS.iphone_x);
                break;
            case Keyboard.NUMBER_2:
                screen.emulate(ScreenTypesIOS.iphone_6_plus);
                break;
            case Keyboard.NUMBER_3:
                screen.emulate(ScreenTypesIOS.iphone_5);
                break;
            case Keyboard.NUMBER_4:
                screen.emulate(ScreenTypesIOS.ipad_air_2);
                break;
            case Keyboard.NUMBER_5:
                screen.emulate(ScreenTypesIOS.ipad_pro_10_5);
                break;
            case Keyboard.NUMBER_6:
                screen.emulate(ScreenTypesIOS.ipad_pro_12_9);
                break;
            case Keyboard.NUMBER_7:
                screen.emulate(ScreenTypesAndroid.google_pixel);
                break;
            case Keyboard.NUMBER_8:
                screen.emulate(ScreenTypesAndroid.htc_one);
                break;
            case Keyboard.NUMBER_9:
                screen.emulate(ScreenTypesAndroid.samsung_nexus_10);
                break;
            case Keyboard.NUMBER_0:
                screen.emulate(ScreenTypesAndroid.samsung_galaxy_note_3);
                break;
            case Keyboard.SPACE:
                if (stage.autoOrients) {
                    screen.isLandscape() ? screen.portrait() : screen.landscape();
                }
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
