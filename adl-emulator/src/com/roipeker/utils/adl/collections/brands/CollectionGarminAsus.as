// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionGarminAsus {

    public function CollectionGarminAsus() {
    }

    private var _a10:ScreenSpecifier;
    public function get a10():ScreenSpecifier {
        return _a10 ||= new ScreenSpecifier("Garmin-Asus A10", 320, 480, 180, "Android 2.1", "phone", 3.2, "Garmin-Asus", "a10");
    }

    private var _nuvifone_a50:ScreenSpecifier;
    public function get nuvifone_a50():ScreenSpecifier {
        return _nuvifone_a50 ||= new ScreenSpecifier("Garmin-Asus nuvifone A50", 320, 480, 165, "Android 2.1", "phone", 3.5, "Garmin-Asus", "nuvifone_a50");
    }


}
}
