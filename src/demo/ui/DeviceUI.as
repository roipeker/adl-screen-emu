// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo.ui {
import demo.*;

import com.roipeker.utils.adl.ScreenDefinition;
import com.roipeker.utils.adl.ScreenEmulator;
import com.roipeker.utils.adl.collections.ScreenTypesIOS;

import flash.display.StageOrientation;

import starling.display.Image;
import starling.display.Quad;
import starling.display.Sprite;
import starling.events.Event;

public class DeviceUI extends Sprite {

    private var screen:ScreenEmulator;

    private var navbar:Sprite;
    private var navbar_bg:Quad;

    private var statusbar:Sprite;
    private var statusbarIOS:Sprite;
    private var statusbarAND:Sprite;
    private var iphoneXDevice:Sprite;
    private var iphoneX:Sprite;

    private var statusbar_bg:Quad;

    private var and_nb_imgs:Array;
    private var and_sb_imgs:Array;
    private var ios_sb_imgs:Array;

    private var iphx_dev_imgs:Array;
    private var iphx_sb_imgs:Array;

    private var _statusbarHeight:int = 0 ;
    private var _navbarHeight:int = 0 ;

    private static var _instance:DeviceUI;
    public static function get instance():DeviceUI {
        if (!_instance) _instance = new DeviceUI();
        return _instance;
    }

    // Use DeviceUI.instance instead.
    public function DeviceUI() {
        if( _instance ){
            trace("You should not create more than 1 Device UI... and keep it on the stage. Use DeviceUI.instance");
            return ;
        }
        _instance = this ;
        screen = ScreenEmulator.instance;
        addEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, init);

        statusbar = new Sprite();

        statusbar_bg = new Quad(100, 25, 0x333333);

        statusbarIOS = new Sprite();
        statusbarAND = new Sprite();

        statusbar.addChild(statusbar_bg);
        statusbar.addChild(statusbarAND);
        statusbar.addChild(statusbarIOS);
        addChild(statusbar);

        ios_sb_imgs = [];
        ios_sb_imgs[0] = addImage("ios_sb_left", statusbarIOS);
        ios_sb_imgs[1] = addImage("ios_sb_center", statusbarIOS);
        ios_sb_imgs[2] = addImage("ios_sb_right", statusbarIOS);
        Image(ios_sb_imgs[1]).alignPivot("center", "top");

        // iphone x, special case.
        iphoneX = new Sprite();
        iphoneXDevice = new Sprite();

        // statusbar and home indicator.
        iphx_sb_imgs = [];
        iphx_sb_imgs[0] = addImage("iphx_sb_left", iphoneX);
        iphx_sb_imgs[1] = addImage("iphx_sb_right", iphoneX);
        iphx_sb_imgs[2] = addImage("iphx_nb_ind", iphoneX);

        // "safe areas" references.
        iphx_sb_imgs[3] = new Quad(100,44, 0xff0000);
        iphx_sb_imgs[4] = new Quad(100,34, 0x00ff00);
        iphoneX.addChild(iphx_sb_imgs[3]);
        iphoneX.addChild(iphx_sb_imgs[4]);
        iphx_sb_imgs[3].alpha = .12;
        iphx_sb_imgs[4].alpha = .12;

        buildIphoneXFrame();

        addChild(iphoneX);
        iphoneX.addChild(iphoneXDevice);

        // fixed positions for statusbar in iphonex
        iphx_sb_imgs[0].x = 27.93;
        iphx_sb_imgs[0].y = 17;
        iphx_sb_imgs[1].x = 293;
        iphx_sb_imgs[1].y = 17;
        Image(iphx_sb_imgs[2]).alignPivot("center", "top");

        iphoneX.visible = false;

        // Android.
        and_sb_imgs = [];
        and_sb_imgs[0] = addImage("and_sb_left", statusbarAND);
        and_sb_imgs[1] = addImage("and_sb_right", statusbarAND);

        navbar = new Sprite();

        navbar_bg = new Quad(100, 48, 0x232323);
        navbar.addChild(navbar_bg);
        addChild(navbar);

        and_nb_imgs = [];
        and_nb_imgs[0] = addImage("and_nb_left", navbar);
        and_nb_imgs[1] = addImage("and_nb_center", navbar);
        and_nb_imgs[2] = addImage("and_nb_right", navbar);
        for each(var img:Image in and_nb_imgs) {
            img.alignPivot();
            img.y = 48 / 2;
        }

        screen.addEventListener(Event.CHANGE, onDeviceChange, false, 1000);
        stage.addEventListener(Event.RESIZE, onStageResize );

        // refresh device specs
        onDeviceChange(null);
        onStageResize(null);
    }

    private function buildIphoneXFrame():void {

        // 4 corners and notch.
        iphx_dev_imgs = [];
        iphx_dev_imgs[0] = addImage("iphx_c1", iphoneXDevice);
        iphx_dev_imgs[1] = addImage("iphx_c2", iphoneXDevice);
        iphx_dev_imgs[2] = addImage("iphx_c3", iphoneXDevice);
        iphx_dev_imgs[3] = addImage("iphx_c4", iphoneXDevice);
        iphx_dev_imgs[4] = addImage("iphx_notch", iphoneXDevice);
        Image(iphx_dev_imgs[4]).alignPivot("center", "top");

        var def:ScreenDefinition = ScreenTypesIOS.iphone_x;
        var sw:int = def.w / 3;
        var sh:int = def.h / 3;
        var cornerW:int = iphx_dev_imgs[1].width;
        iphx_dev_imgs[1].x = sw - cornerW;
        iphx_dev_imgs[2].x = sw - cornerW;
        iphx_dev_imgs[2].y = sh - cornerW;
        iphx_dev_imgs[3].y = sh - cornerW;
        iphx_dev_imgs[4].x = sw / 2;

        iphoneXDevice.pivotX = sw / 2;
        iphoneXDevice.pivotY = sh / 2;

        // adjust UI safe area references.
        iphx_sb_imgs[3].width = iphx_sb_imgs[4].width = sw ;
        iphx_sb_imgs[4].y = sh - iphx_sb_imgs[4].height ;
    }

    private function onDeviceChange(event:Object = null):void {
        trace("Using device: " + screen.device.name + " - size:" + screen.stageWidthPoints + "x" + screen.stageHeightPoints + "@" + screen.densityScale);
        statusbar_bg.visible = true ;
        if (screen.device.isAndroid) {
            _statusbarHeight = 25 ;
            _navbarHeight = 48 ;
            statusbar_bg.height = _statusbarHeight;
            statusbarIOS.visible = false;
            statusbarAND.visible = true;
            navbar.visible = true;
            iphoneX.visible = false;
        } else {
            // iphone x
            if (screen.device.ppi == 463) {
                _statusbarHeight = screen.isLandscape() ? 0 : 44 ;
                _navbarHeight = 34 ;
                statusbar_bg.visible = false ;
                iphoneX.visible = true;
                statusbarIOS.visible = false;
            } else {
                _statusbarHeight = 20 ;
                _navbarHeight = 0 ;
                statusbar_bg.height = 20;
                statusbarIOS.visible = true;
                iphoneX.visible = false;
            }
            navbar.visible = false;
            statusbarAND.visible = false;
        }
    }

    private function onStageResize(event:Event):void {
        var sw:int = stage.stageWidth;
        var sh:int = stage.stageHeight;

        statusbar_bg.width = sw;
        if (screen.device.isAndroid) {
            and_sb_imgs[0].x = 8;
            and_sb_imgs[0].y = 5;
            and_sb_imgs[1].x = sw - and_sb_imgs[1].width - 8;
            and_sb_imgs[1].y = 5;

            navbar_bg.width = sw;
            navbar.y = sh - navbar_bg.height;
            and_nb_imgs[0].x = sw / 4;
            and_nb_imgs[1].x = sw / 2;
            and_nb_imgs[2].x = sw - sw / 4;
        } else {

            if (iphoneX.visible) {

                // center the device.
                iphoneXDevice.x = sw / 2;
                iphoneXDevice.y = sh / 2;

                // shortcut.
                // iphoneXDevice.rotation = screen.isLandscape() ? -Math.PI / 2 : 0;
                if (screen.stageOrientation == StageOrientation.ROTATED_LEFT) {
                    iphoneXDevice.rotation = -Math.PI / 2;
                } else if (screen.stageOrientation == StageOrientation.ROTATED_RIGHT) {
                    iphoneXDevice.rotation = Math.PI / 2;
                } else {
                    iphoneXDevice.rotation = 0;
                }

                _statusbarHeight = screen.isLandscape() ? 0 : 44 ;

                // no statusbar on landscape
                iphx_sb_imgs[3].visible = iphx_sb_imgs[4].visible =
                iphx_sb_imgs[0].visible = iphx_sb_imgs[1].visible = !screen.isLandscape();

                iphx_sb_imgs[2].x = sw / 2;
                iphx_sb_imgs[2].y = sh - 9;
            } else {
                ios_sb_imgs[0].x = 13;
                ios_sb_imgs[0].y = 5;
                ios_sb_imgs[1].x = sw / 2;
                ios_sb_imgs[1].y = 6;
                ios_sb_imgs[2].x = sw - ios_sb_imgs[2].width - 9;
                ios_sb_imgs[2].y = 5;
            }
        }
    }

    private function addImage(textureId:String, doc:Sprite = null, displayObjectName:String = null):Image {
        var image:Image = new Image(Assets.getTexture(textureId));
        if (doc) {
            doc.addChild(image);
        }
        image.scale = .5;
//        image.color = 0xff0000 ;
        if (displayObjectName) {
            image.name = displayObjectName;
        }
        return image;
    }

    public function get statusbarHeight():int {
        return _statusbarHeight;
    }

    public function get navbarHeight():int {
        return _navbarHeight;
    }
}
}
