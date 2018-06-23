// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionNEC {

    public function CollectionNEC() {
    }

    private var _terrain:ScreenSpecifier;
    public function get terrain():ScreenSpecifier {
        return _terrain ||= new ScreenSpecifier("NEC Terrain", 640, 480, 258, "Android 4.0", "phone", 3.1, "NEC", "terrain");
    }


}
}
