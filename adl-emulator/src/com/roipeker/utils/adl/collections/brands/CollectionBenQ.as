// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionBenQ {

    public function CollectionBenQ() {
    }

    private var _a3:ScreenSpecifier;
    public function get a3():ScreenSpecifier {
        return _a3 ||= new ScreenSpecifier("BenQ A3", 540, 960, 245, "Android 4.1.2", "phone", 4.5, "BenQ", "a3");
    }

    private var _b502:ScreenSpecifier;
    public function get b502():ScreenSpecifier {
        return _b502 ||= new ScreenSpecifier("BenQ B502", 720, 1280, 294, "Android 4.4.2", "phone", 5, "BenQ", "b502");
    }

    private var _f3:ScreenSpecifier;
    public function get f3():ScreenSpecifier {
        return _f3 ||= new ScreenSpecifier("BenQ F3", 540, 960, 245, "Android 4.2.2", "phone", 4.5, "BenQ", "f3");
    }

    private var _f5:ScreenSpecifier;
    public function get f5():ScreenSpecifier {
        return _f5 ||= new ScreenSpecifier("BenQ F5", 720, 1280, 294, "Android 4.4.2", "phone", 5, "BenQ", "f5");
    }

    private var _f52:ScreenSpecifier;
    public function get f52():ScreenSpecifier {
        return _f52 ||= new ScreenSpecifier("BenQ F52", 1080, 1920, 424, "Android 5.0", "phone", 5.2, "BenQ", "f52");
    }

    private var _t3:ScreenSpecifier;
    public function get t3():ScreenSpecifier {
        return _t3 ||= new ScreenSpecifier("BenQ T3", 540, 960, 245, "Android 4.4.2", "phone", 4.5, "BenQ", "t3");
    }


}
}
