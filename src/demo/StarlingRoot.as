// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo {
import com.roipeker.utils.adl.ScreenEmulator;

import demo.ui.DeviceUI;

import starling.display.Sprite;
import starling.events.Event;

public class StarlingRoot extends Sprite {


    public function StarlingRoot() {
        addEventListener(Event.ADDED_TO_STAGE, onAdded);
    }

    private function onAdded(event:Event):void {

        // plug ur UI under the DeviceUI.instance :)
        ScreenEmulator.instance.addEventListener(Event.CHANGE, onDeviceChange );

        // DeviceUI is just to demo the ScreenEmulator functionality.
        stage.addChild( DeviceUI.instance );
    }

    private function onDeviceChange(event:Object=null):void {
        //trace("statusbar height=" + DeviceUI.instance.statusbarHeight);
        //trace("navbar height=" + DeviceUI.instance.navbarHeight);
    }

}
}
