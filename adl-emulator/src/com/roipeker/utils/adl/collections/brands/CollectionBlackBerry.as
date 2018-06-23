// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionBlackBerry {

    public function CollectionBlackBerry() {
    }

    private var _aurora:ScreenSpecifier;
    public function get aurora():ScreenSpecifier {
        return _aurora ||= new ScreenSpecifier("BlackBerry Aurora", 720, 1280, 267, "Android 7.0", "phone", 5.5, "BlackBerry", "aurora");
    }

    private var _dtek50:ScreenSpecifier;
    public function get dtek50():ScreenSpecifier {
        return _dtek50 ||= new ScreenSpecifier("BlackBerry DTEK50", 1080, 1920, 424, "Android 6.0", "phone", 5.2, "BlackBerry", "dtek50");
    }

    private var _dtek60:ScreenSpecifier;
    public function get dtek60():ScreenSpecifier {
        return _dtek60 ||= new ScreenSpecifier("BlackBerry DTEK60", 1440, 2560, 534, "Android 6.0", "phone", 5.5, "BlackBerry", "dtek60");
    }

    private var _key2:ScreenSpecifier;
    public function get key2():ScreenSpecifier {
        return _key2 ||= new ScreenSpecifier("BlackBerry Key2", 1080, 1620, 434, "Android 8.1", "phone", 4.5, "BlackBerry", "key2");
    }

    private var _keyone:ScreenSpecifier;
    public function get keyone():ScreenSpecifier {
        return _keyone ||= new ScreenSpecifier("BlackBerry Keyone", 1080, 1620, 434, "Android 7.1", "phone", 4.5, "BlackBerry", "keyone");
    }

    private var _motion:ScreenSpecifier;
    public function get motion():ScreenSpecifier {
        return _motion ||= new ScreenSpecifier("BlackBerry Motion", 1080, 1920, 403, "Android 7.1", "phone", 5.5, "BlackBerry", "motion");
    }

    private var _priv:ScreenSpecifier;
    public function get priv():ScreenSpecifier {
        return _priv ||= new ScreenSpecifier("BlackBerry Priv", 1440, 2560, 540, "Android 6.0.1", "phone", 5.4, "BlackBerry", "priv");
    }


}
}
