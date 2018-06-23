// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionVertu {

    public function CollectionVertu() {
    }

    private var _aster:ScreenSpecifier;
    public function get aster():ScreenSpecifier {
        return _aster ||= new ScreenSpecifier("Vertu Aster", 1080, 1920, 473, "Android 4.4.2", "phone", 4.7, "Vertu", "aster");
    }

    private var _constellation_2013:ScreenSpecifier;
    public function get constellation_2013():ScreenSpecifier {
        return _constellation_2013 ||= new ScreenSpecifier("Vertu Constellation 2013", 720, 1280, 342, "Android 4.2.2", "phone", 4.3, "Vertu", "constellation_2013");
    }

    private var _signature_touch:ScreenSpecifier;
    public function get signature_touch():ScreenSpecifier {
        return _signature_touch ||= new ScreenSpecifier("Vertu Signature Touch", 1080, 1920, 469, "Android 4.4.2", "phone", 4.7, "Vertu", "signature_touch");
    }

    private var _signature_touch_2015:ScreenSpecifier;
    public function get signature_touch_2015():ScreenSpecifier {
        return _signature_touch_2015 ||= new ScreenSpecifier("Vertu Signature Touch (2015)", 1080, 1920, 424, "Android 5.1", "phone", 5.2, "Vertu", "signature_touch_2015");
    }

    private var _ti:ScreenSpecifier;
    public function get ti():ScreenSpecifier {
        return _ti ||= new ScreenSpecifier("Vertu Ti", 480, 800, 252, "Android 4.0", "phone", 3.7, "Vertu", "ti");
    }


}
}
