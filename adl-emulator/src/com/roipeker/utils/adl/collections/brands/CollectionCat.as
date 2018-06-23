// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionCat {

    public function CollectionCat() {
    }

    private var _b15:ScreenSpecifier;
    public function get b15():ScreenSpecifier {
        return _b15 ||= new ScreenSpecifier("Cat B15", 480, 800, 233, "Android 4.1", "phone", 4, "Cat", "b15");
    }

    private var _b15_q:ScreenSpecifier;
    public function get b15_q():ScreenSpecifier {
        return _b15_q ||= new ScreenSpecifier("Cat B15 Q", 480, 800, 233, "Android 4.4.2", "phone", 4, "Cat", "b15_q");
    }

    private var _s30:ScreenSpecifier;
    public function get s30():ScreenSpecifier {
        return _s30 ||= new ScreenSpecifier("Cat S30", 480, 854, 218, "Android 5.1", "phone", 4.5, "Cat", "s30");
    }

    private var _s31:ScreenSpecifier;
    public function get s31():ScreenSpecifier {
        return _s31 ||= new ScreenSpecifier("Cat S31", 720, 1280, 312, "Android 7.0", "phone", 4.7, "Cat", "s31");
    }

    private var _s40:ScreenSpecifier;
    public function get s40():ScreenSpecifier {
        return _s40 ||= new ScreenSpecifier("Cat S40", 540, 960, 234, "Android 5.1", "phone", 4.7, "Cat", "s40");
    }

    private var _s41:ScreenSpecifier;
    public function get s41():ScreenSpecifier {
        return _s41 ||= new ScreenSpecifier("Cat S41", 1080, 1920, 441, "Android 7.0", "phone", 5, "Cat", "s41");
    }

    private var _s50:ScreenSpecifier;
    public function get s50():ScreenSpecifier {
        return _s50 ||= new ScreenSpecifier("Cat S50", 720, 1280, 312, "Android 4.4", "phone", 4.7, "Cat", "s50");
    }

    private var _s60:ScreenSpecifier;
    public function get s60():ScreenSpecifier {
        return _s60 ||= new ScreenSpecifier("Cat S60", 720, 1280, 312, "Android 6.0", "phone", 4.7, "Cat", "s60");
    }

    private var _s61:ScreenSpecifier;
    public function get s61():ScreenSpecifier {
        return _s61 ||= new ScreenSpecifier("Cat S61", 1080, 1920, 424, "Android 8.0", "phone", 5.2, "Cat", "s61");
    }


}
}
