// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 19/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl {

public class ScreenDefinition {

    public static const IOS:String = 'iOS';
    public static const ANDORID:String = 'Android';

    private var _name:String;
    private var _w:uint;
    private var _h:uint;
    private var _ppi:uint;
    private var _size:Number;

    // ios, android...
    private var _deviceType:String;

    public function ScreenDefinition(name:String, w:int, h:int, ppi:int, size:Number, deviceType:String = null) {
        _name = name;

        // todo: flip size definition if its backwards?, mobiles should be defined in portrait mode for consistency.
        _w = w > h ? h : w;
        _h = w > h ? w : h;

        _ppi = ppi;
        _size = size;
        _deviceType = deviceType;
    }

    public function get isIOS():Boolean {
        return _deviceType == IOS;
    }

    public function get isAndroid():Boolean {
        return _deviceType == ANDORID;
    }

    public function get size():Number {
        return _size;
    }

    public function get ppi():uint {
        return _ppi;
    }

    public function get name():String {
        return _name;
    }

    public function get w():uint {
        return _w;
    }

    public function get h():uint {
        return _h;
    }

    public function get deviceType():String {
        return _deviceType;
    }

    public function setName(name:String):ScreenDefinition {
        _name = name;
        return this;
    }
}
}
