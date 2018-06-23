// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionSonim {

    public function CollectionSonim() {
    }

    private var _xp6:ScreenSpecifier;
    public function get xp6():ScreenSpecifier {
        return _xp6 ||= new ScreenSpecifier("Sonim XP6", 320, 432, 204, "Android 4.4.2", "phone", 2.63, "Sonim", "xp6");
    }

    private var _xp7:ScreenSpecifier;
    public function get xp7():ScreenSpecifier {
        return _xp7 ||= new ScreenSpecifier("Sonim XP7", 480, 800, 233, "Android 4.4.2", "phone", 4, "Sonim", "xp7");
    }

    private var _xp8:ScreenSpecifier;
    public function get xp8():ScreenSpecifier {
        return _xp8 ||= new ScreenSpecifier("Sonim XP8", 1080, 1920, 441, "Android 7.0", "phone", 5, "Sonim", "xp8");
    }


}
}
