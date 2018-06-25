// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo {
import com.roipeker.utils.adl.ScreenEmulator;
import com.roipeker.utils.adl.ui.DeviceUI;

import demo.ui.MainScreen;

import starling.display.Sprite;
import starling.events.Event;

public class StarlingRoot extends Sprite {

    private var mainscreen:MainScreen;

    public function StarlingRoot() {
        addEventListener(Event.ADDED_TO_STAGE, onAdded);
    }

    private function onAdded(event:Event):void {

        // plug ur UI under the DeviceUI.instance
        // is just to demo the ScreenEmulator functionality.
        stage.addChild(DeviceUI.instance);

        // You can tweak some basic style.
//        DeviceUI.instance.statusbarStyle = DeviceUI.STATUSBAR_DARK;
//        DeviceUI.instance.transparentStatusbarBackground = false ;
//        DeviceUI.instance.transparentNavbarBackground = true ;
//        DeviceUI.instance.navbarButtonsColor = 0xff0000 ;
//        DeviceUI.instance.statusbarBackgroundColor = 0xcc0000 ;
//        DeviceUI.instance.navbarBackgroundColor = 0xcc0000 ;
//        DeviceUI.instance.debugIPhoneXSize = true ;

        Assets.init();

        mainscreen = new MainScreen();
        addChild(mainscreen);

        stage.addEventListener(Event.RESIZE, onStageResize);
        ScreenEmulator.instance.addEventListener(Event.CHANGE, onDeviceChange);

        if( ScreenEmulator.instance.device ){
            onDeviceChange();
        }
    }

    private function onStageResize(event:Event):void {
        mainscreen.onStageResize();
    }

    private function onDeviceChange(event:Object = null):void {

        if( ScreenEmulator.instance.device.isAndroid ){
            DeviceUI.instance.transparentStatusbarBackground = false ;
            DeviceUI.instance.statusbarStyle = DeviceUI.STATUSBAR_LIGHT;
        } else {
            DeviceUI.instance.transparentStatusbarBackground = true ;
            DeviceUI.instance.statusbarStyle = DeviceUI.STATUSBAR_DARK;
        }

        //trace("statusbar height=" + DeviceUI.instance.statusbarHeight);
        //trace("navbar height=" + DeviceUI.instance.navbarHeight);
        mainscreen.onDeviceChanged();
    }

}
}
