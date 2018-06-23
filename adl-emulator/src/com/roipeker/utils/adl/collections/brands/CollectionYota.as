// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionYota {

    public function CollectionYota() {
    }

    private var _yotaphone:ScreenSpecifier;
    public function get yotaphone():ScreenSpecifier {
        return _yotaphone ||= new ScreenSpecifier("Yota YotaPhone", 720, 1280, 342, "Android 4.2.2", "phone", 4.3, "Yota", "yotaphone");
    }

    private var _yotaphone_2:ScreenSpecifier;
    public function get yotaphone_2():ScreenSpecifier {
        return _yotaphone_2 ||= new ScreenSpecifier("Yota YotaPhone 2", 1080, 1920, 442, "Android 6.0", "phone", 5, "Yota", "yotaphone_2");
    }

    private var _yotaphone_3:ScreenSpecifier;
    public function get yotaphone_3():ScreenSpecifier {
        return _yotaphone_3 ||= new ScreenSpecifier("Yota YotaPhone 3", 1080, 1920, 401, "Android 7.1.1", "phone", 5.5, "Yota", "yotaphone_3");
    }


}
}
