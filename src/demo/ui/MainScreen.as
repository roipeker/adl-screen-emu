// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo.ui {
import com.roipeker.utils.adl.ScreenEmulator;
import com.roipeker.utils.adl.ScreenSpecifier;
import com.roipeker.utils.adl.ui.DeviceUI;

import demo.Assets;

import starling.display.Quad;
import starling.display.Sprite;
import starling.events.Event;
import starling.text.TextField;
import starling.utils.StringUtil;

public class MainScreen extends Sprite {

    private var title_tf:TextField;
    private var devInfo_tf:TextField;

    private var _sw:int;
    private var _sh:int;
    private var card:Sprite;
    private var _input:InputText;

    public function MainScreen() {
        addEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function init(event:Event):void {
        title_tf = Assets.getText(this, Assets.MEDIUM, 24, 0x333333, "...", 100, -1);
        title_tf.format.horizontalAlign = "center";

        card = new Sprite();
        var card_bg:Quad = new Quad(140, 50, 0x333333);
        card.addChild(card_bg);
        var cardLabel_tf:TextField = Assets.getText(card, Assets.BOLD, 12, 0xffffff, "dummy box", 140, 50);
        cardLabel_tf.format.verticalAlign = "center";
        cardLabel_tf.format.horizontalAlign = "center";

        addChild(card);
        card.alignPivot();

        devInfo_tf = Assets.getText(this, Assets.REGULAR, 14, 0x333333, "...", 100, -1);
        initStageText();

        onDeviceChanged();
        onStageResize();
    }

    private function initStageText():void {
        _input = new InputText(this, 300, 50);
    }

    public function onDeviceChanged():void {
        title_tf.text = "emulating " + ScreenEmulator.instance.device.name;

        var device:ScreenSpecifier = ScreenEmulator.instance.device;
        const template:String = "name: {0}\nresolution: {1}x{2} @{3} \nscreen inches:{4}\"\ndevice: {5}";

        var msg:String = StringUtil.format(template, device.name, device.w, device.h, device.dpi, device.inches, device.isTablet ? "tablet" : "phone");
        devInfo_tf.text = msg;
    }

    public function onStageResize():void {
        // stage resize gets call right after emulating a new device.
        _sw = stage.stageWidth;
        _sh = stage.stageHeight;
        _sw -= DeviceUI.instance.leftRightSafeArea * 2;
        _sh -= DeviceUI.instance.navbarHeight;
        _sh -= DeviceUI.instance.statusbarHeight;

        // only useful for iPhoneX in landscape mode.
        this.x = DeviceUI.instance.leftRightSafeArea;

        this.y = DeviceUI.instance.statusbarHeight;
        refreshUI();
    }

    private function refreshUI():void {
        devInfo_tf.x = title_tf.x = 0;

        title_tf.y = 0;
        title_tf.width = _sw;

        devInfo_tf.width = _sw;
        devInfo_tf.x += 10;
        devInfo_tf.y = _sh - devInfo_tf.height - 10;

        card.x = _sw >> 1;
        card.y = _sh >> 1;

        _input.x = _sw - _input.w >> 1;
        _input.y = 40;
        _input.refreshUI();
    }
}
}

import com.roipeker.utils.adl.ScreenEmulator;

import flash.geom.Rectangle;
import flash.text.StageText;
import flash.text.StageTextInitOptions;

import starling.core.Starling;
import starling.display.Quad;
import starling.display.Sprite;
import starling.events.Event;

class InputText extends Sprite {

    private var _w:int;
    private var _h:int;

    private var _st:StageText;
    private var _bg:Quad;
    private var _viewport:Rectangle;

    public function InputText(doc:Sprite, w:int, h:int):void {
        _w = w;
        _h = h;
        super();
        if (doc) {
            doc.addChild(this);
            init(null);
        } else {
            addEventListener(Event.ADDED_TO_STAGE, init);
        }
    }

    private function init(event:Event = null):void {
        if (!_st) {
            initUI();
        }
        refreshUI();
    }

    private function initUI():void {
        _bg = new Quad(_w, _h, 0xe4e4e4);
        addChild(_bg);

        _st = new StageText(new StageTextInitOptions(false));
        _st.stage = Starling.current.nativeStage;
        _st.fontFamily = "Arial";
        _st.color = 0x333333;
    }

    override public function set visible(value:Boolean):void {
        if (_st) _st.visible = value;
        super.visible = value;
    }

    public function refreshUI():void {
        if (!_st || !stage) return;

//        var ratio: Number = Starling.current.nativeStage.stageWidth / ScreenEmulator.instance.stageWidthPoints ;
//        trace(Starling.current.nativeStage.stageWidth, ScreenEmulator.instance.stageWidthPoints, ScreenEmulator.instance.deviceStageWidth);
        var screenScale:Number = ScreenEmulator.instance.stageScale;
        _viewport = _bg.getBounds(stage, _viewport);
        _viewport.x *= screenScale;
        _viewport.y *= screenScale;

        var fontSize:int = 24;
        var fontSizeOff:int = fontSize + 12; // ugly... should use TextMetrics with embedded font.
        var offsetY:int = _h - (fontSize + 4) >> 1;
        _viewport.y += offsetY * screenScale;
        _viewport.width *= screenScale;
//        _viewport.height *= screenScale;
        _viewport.height = Math.ceil(fontSizeOff * screenScale);

        _st.fontSize = fontSize * screenScale;
        _st.viewPort = _viewport;
    }


    public function get w():int {
        return _w;
    }

    public function get h():int {
        return _h;
    }
}