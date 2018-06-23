// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionParla {

    public function CollectionParla() {
    }

    private var _sonic_3_5:ScreenSpecifier;
    public function get sonic_3_5():ScreenSpecifier {
        return _sonic_3_5 ||= new ScreenSpecifier("Parla Sonic 3.5", 320, 480, 165, "Android 4.1", "phone", 3.5, "Parla", "sonic_3_5");
    }

    private var _sonic_3_5s:ScreenSpecifier;
    public function get sonic_3_5s():ScreenSpecifier {
        return _sonic_3_5s ||= new ScreenSpecifier("Parla Sonic 3.5S", 320, 480, 165, "Android 4.4", "phone", 3.5, "Parla", "sonic_3_5s");
    }


}
}
