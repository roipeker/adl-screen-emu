// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl {
public class ScreenSpecifier {

    public static const IOS:String = 'iOS';
    public static const ANDORID:String = 'Android';
    public static const UKNOWN:String = 'uknown';

    public static const TABLET:String = 'tablet';
    public static const PHONE:String = 'phone';

    private var _id:String;
    private var _brand:String;
    private var _name:String;

    // resolution.
    private var _w:int;
    private var _h:int;
    private var _dpi:int;

    // useful to retrieve the stage size.
    private var _densityScale:Number = 0;

    private var _inches:Number;
    private var _os:String;

    // ANDROID, IOS, UKNOWN
    // todo: include WINDOWS, FIREFOX, OTHER ?
    private var _osType:String;

    // PHONE, TABLET, UKNOWN
    // todo: include DESKTOP, WEREABLE ?
    private var _deviceType:String;

    public function ScreenSpecifier(name:String, w:int, h:int, dpi:int, os:String = null, deviceType:String = null, screenInches:Number = 0, brand:String = null, id:String = null) {
        _name = name;
        _w = w > h ? h : w;
        _h = w > h ? w : h;
        _dpi = dpi;
        _os = os;
        _deviceType = deviceType;
        _inches = screenInches;
        _brand = brand;
        _id = id;
        var oskey:String = os.toLowerCase();
        if (oskey.indexOf("android") > -1) {
            _osType = ANDORID;
        } else if (oskey.indexOf("ios") > -1) {
            _osType = IOS;
        } else {
            _osType = UKNOWN;
        }
    }

    public function get isPhone():Boolean {
        return _deviceType == PHONE;
    }

    public function get isTablet():Boolean {
        return _deviceType == TABLET;
    }

    public function get isIOS():Boolean {
        return _osType == IOS;
    }

    public function get isAndroid():Boolean {
        return _osType == ANDORID;
    }

    public function get id():String {
        return _id;
    }

    public function get brand():String {
        return _brand;
    }

    public function get name():String {
        return _name;
    }

    public function get w():int {
        return _w;
    }

    public function get h():int {
        return _h;
    }

    public function set h(value:int):void {
        _h = value;
    }

    public function get dpi():int {
        return _dpi;
    }

    public function get inches():Number {
        return _inches;
    }

    public function get os():String {
        return _os;
    }


    public function toString():String {
        return _name + " - resolution: " + _w + "x" + _h + "@" + _dpi + ", screen: " + _inches + "\" (" + _deviceType + ")";
    }


    //===================================================================================================================================================
    //
    //      ------  Utility getters
    //
    //===================================================================================================================================================

    public function get densityScale():Number {
        if (_densityScale == 0) {
            _densityScale = ScreenEmulator.instance.getDensityScaleForDevice(this);
        }
        return _densityScale;
    }

    public function get stageWidthPoints():uint {
        return _w / densityScale;
    }

    public function get stageHeightPoints():uint {
        return _h / densityScale;
    }
}
}
