// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionNvidia {

    public function CollectionNvidia() {
    }

    private var _shield:ScreenSpecifier;
    public function get shield():ScreenSpecifier {
        return _shield ||= new ScreenSpecifier("Nvidia Shield", 1920, 1200, 283, "Android 7.0", "tablet", 8, "Nvidia", "shield");
    }

    private var _shield_k1:ScreenSpecifier;
    public function get shield_k1():ScreenSpecifier {
        return _shield_k1 ||= new ScreenSpecifier("Nvidia Shield K1", 1920, 1200, 283, "Android 7.0", "tablet", 8, "Nvidia", "shield_k1");
    }

    private var _shield_lte:ScreenSpecifier;
    public function get shield_lte():ScreenSpecifier {
        return _shield_lte ||= new ScreenSpecifier("Nvidia Shield LTE", 1920, 1200, 283, "Android 4.4.4", "tablet", 8, "Nvidia", "shield_lte");
    }


}
}
