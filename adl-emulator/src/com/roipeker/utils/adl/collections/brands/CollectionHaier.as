// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionHaier {

    public function CollectionHaier() {
    }

    private var _g51:ScreenSpecifier;
    public function get g51():ScreenSpecifier {
        return _g51 ||= new ScreenSpecifier("Haier G51", 480, 854, 196, "Android 7.0", "phone", 5, "Haier", "g51");
    }

    private var _g7:ScreenSpecifier;
    public function get g7():ScreenSpecifier {
        return _g7 ||= new ScreenSpecifier("Haier G7", 720, 1280, 294, "Android 7.0", "phone", 5, "Haier", "g7");
    }

    private var _g8:ScreenSpecifier;
    public function get g8():ScreenSpecifier {
        return _g8 ||= new ScreenSpecifier("Haier G8", 720, 1280, 294, "Android 7.0", "phone", 5, "Haier", "g8");
    }

    private var _hurricane:ScreenSpecifier;
    public function get hurricane():ScreenSpecifier {
        return _hurricane ||= new ScreenSpecifier("Haier Hurricane", 720, 1440, 282, "Android 7.0", "phone", 5.7, "Haier", "hurricane");
    }

    private var _i6:ScreenSpecifier;
    public function get i6():ScreenSpecifier {
        return _i6 ||= new ScreenSpecifier("Haier I6", 720, 1440, 282, "Android 7.1", "phone", 5.7, "Haier", "i6");
    }

    private var _l7:ScreenSpecifier;
    public function get l7():ScreenSpecifier {
        return _l7 ||= new ScreenSpecifier("Haier L7", 1080, 1920, 401, "Android 7.1", "phone", 5.5, "Haier", "l7");
    }

    private var _l8:ScreenSpecifier;
    public function get l8():ScreenSpecifier {
        return _l8 ||= new ScreenSpecifier("Haier L8", 1080, 2160, 403, "Android 7.1", "phone", 5.99, "Haier", "l8");
    }


}
}
