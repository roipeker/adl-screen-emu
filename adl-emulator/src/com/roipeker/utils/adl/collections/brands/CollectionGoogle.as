// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionGoogle {

    public function CollectionGoogle() {
    }

    private var _pixel:ScreenSpecifier;
    public function get pixel():ScreenSpecifier {
        return _pixel ||= new ScreenSpecifier("Google Pixel", 1080, 1920, 441, "Android Android 8.0", "phone", 5, "Google", "pixel");
    }

    private var _pixel_2:ScreenSpecifier;
    public function get pixel_2():ScreenSpecifier {
        return _pixel_2 ||= new ScreenSpecifier("Google Pixel 2", 1080, 1920, 441, "Android 8.0", "phone", 5, "Google", "pixel_2");
    }

    private var _pixel_2_xl:ScreenSpecifier;
    public function get pixel_2_xl():ScreenSpecifier {
        return _pixel_2_xl ||= new ScreenSpecifier("Google Pixel 2 XL", 1440, 2880, 538, "Android 8.0", "phone", 6, "Google", "pixel_2_xl");
    }

    private var _pixel_c:ScreenSpecifier;
    public function get pixel_c():ScreenSpecifier {
        return _pixel_c ||= new ScreenSpecifier("Google Pixel C", 2560, 1800, 308, "Android 6.0.1", "tablet", 10.2, "Google", "pixel_c");
    }

    private var _pixel_xl:ScreenSpecifier;
    public function get pixel_xl():ScreenSpecifier {
        return _pixel_xl ||= new ScreenSpecifier("Google Pixel XL", 1440, 2560, 534, "Android Android 8.0", "phone", 5.5, "Google", "pixel_xl");
    }


}
}
