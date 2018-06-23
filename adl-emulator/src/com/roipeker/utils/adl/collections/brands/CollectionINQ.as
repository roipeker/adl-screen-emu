// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionINQ {

    public function CollectionINQ() {
    }

    private var _cloud_touch:ScreenSpecifier;
    public function get cloud_touch():ScreenSpecifier {
        return _cloud_touch ||= new ScreenSpecifier("iNQ Cloud Touch", 320, 480, 165, "Android 2.2", "phone", 3.5, "iNQ", "cloud_touch");
    }


}
}
