// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionBlackview {

    public function CollectionBlackview() {
    }

    private var _a10:ScreenSpecifier;
    public function get a10():ScreenSpecifier {
        return _a10 ||= new ScreenSpecifier("Blackview A10", 720, 1280, 294, "Android 7.0", "phone", 5, "Blackview", "a10");
    }

    private var _a7:ScreenSpecifier;
    public function get a7():ScreenSpecifier {
        return _a7 ||= new ScreenSpecifier("Blackview A7", 720, 1280, 294, "Android 7.0", "phone", 5, "Blackview", "a7");
    }

    private var _a7_pro:ScreenSpecifier;
    public function get a7_pro():ScreenSpecifier {
        return _a7_pro ||= new ScreenSpecifier("Blackview A7 Pro", 720, 1280, 294, "Android 7.0", "phone", 5, "Blackview", "a7_pro");
    }

    private var _p6000:ScreenSpecifier;
    public function get p6000():ScreenSpecifier {
        return _p6000 ||= new ScreenSpecifier("Blackview P6000", 1080, 1920, 401, "Android 7.1.1", "phone", 5.5, "Blackview", "p6000");
    }

    private var _s6:ScreenSpecifier;
    public function get s6():ScreenSpecifier {
        return _s6 ||= new ScreenSpecifier("Blackview S6", 720, 1440, 282, "Android 7.0", "phone", 5.7, "Blackview", "s6");
    }

    private var _s8:ScreenSpecifier;
    public function get s8():ScreenSpecifier {
        return _s8 ||= new ScreenSpecifier("Blackview S8", 720, 1440, 282, "Android 7.0", "phone", 5.7, "Blackview", "s8");
    }


}
}
