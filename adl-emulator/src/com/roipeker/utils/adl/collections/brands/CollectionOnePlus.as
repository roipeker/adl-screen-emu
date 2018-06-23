// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionOnePlus {

    public function CollectionOnePlus() {
    }

    private var _oneplus_2:ScreenSpecifier;
    public function get oneplus_2():ScreenSpecifier {
        return _oneplus_2 ||= new ScreenSpecifier("OnePlus 2", 1080, 1920, 401, "Android 6.0.1", "phone", 5.5, "OnePlus", "oneplus_2");
    }

    private var _oneplus_3:ScreenSpecifier;
    public function get oneplus_3():ScreenSpecifier {
        return _oneplus_3 ||= new ScreenSpecifier("OnePlus 3", 1080, 1920, 401, "Android 6.0.1", "phone", 5.5, "OnePlus", "oneplus_3");
    }

    private var _oneplus_3t:ScreenSpecifier;
    public function get oneplus_3t():ScreenSpecifier {
        return _oneplus_3t ||= new ScreenSpecifier("OnePlus 3T", 1080, 1920, 401, "Android 6.0.1", "phone", 5.5, "OnePlus", "oneplus_3t");
    }

    private var _oneplus_5:ScreenSpecifier;
    public function get oneplus_5():ScreenSpecifier {
        return _oneplus_5 ||= new ScreenSpecifier("OnePlus 5", 1080, 1920, 401, "Android 7.1.1", "phone", 5.5, "OnePlus", "oneplus_5");
    }

    private var _oneplus_5t:ScreenSpecifier;
    public function get oneplus_5t():ScreenSpecifier {
        return _oneplus_5t ||= new ScreenSpecifier("OnePlus 5T", 1080, 2160, 401, "Android 7.1.1", "phone", 6.01, "OnePlus", "oneplus_5t");
    }

    private var _oneplus_6:ScreenSpecifier;
    public function get oneplus_6():ScreenSpecifier {
        return _oneplus_6 ||= new ScreenSpecifier("OnePlus 6", 1080, 2280, 402, "Android 8.1", "phone", 6.28, "OnePlus", "oneplus_6");
    }

    private var _one:ScreenSpecifier;
    public function get one():ScreenSpecifier {
        return _one ||= new ScreenSpecifier("OnePlus One", 1080, 1920, 401, "Android 6.0.1", "phone", 5.5, "OnePlus", "one");
    }

    private var _oneplus_x:ScreenSpecifier;
    public function get oneplus_x():ScreenSpecifier {
        return _oneplus_x ||= new ScreenSpecifier("OnePlus X", 1080, 1920, 441, "Android 6.0.1", "phone", 5, "OnePlus", "oneplus_x");
    }


}
}
