// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionImobile {

    public function CollectionImobile() {
    }

    private var _i_mobile_8500:ScreenSpecifier;
    public function get i_mobile_8500():ScreenSpecifier {
        return _i_mobile_8500 ||= new ScreenSpecifier("i-mobile 8500", 320, 480, 180, "Android OS", "phone", 3.2, "i-mobile", "i_mobile_8500");
    }

    private var _i858:ScreenSpecifier;
    public function get i858():ScreenSpecifier {
        return _i858 ||= new ScreenSpecifier("i-mobile i858", 480, 800, 217, "Android 2.0", "phone", 4.3, "i-mobile", "i858");
    }


}
}
