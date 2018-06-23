// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionLeEco {

    public function CollectionLeEco() {
    }

    private var _le_1s:ScreenSpecifier;
    public function get le_1s():ScreenSpecifier {
        return _le_1s ||= new ScreenSpecifier("LeEco Le 1s", 1080, 1920, 401, "Android 5.0 - LeEco Le 1sAndr…", "phone", 5.5, "LeEco", "le_1s");
    }

    private var _le_2:ScreenSpecifier;
    public function get le_2():ScreenSpecifier {
        return _le_2 ||= new ScreenSpecifier("LeEco Le 2", 1080, 1920, 401, "Android 6.0", "phone", 5.5, "LeEco", "le_2");
    }

    private var _le_2_pro:ScreenSpecifier;
    public function get le_2_pro():ScreenSpecifier {
        return _le_2_pro ||= new ScreenSpecifier("LeEco Le 2 Pro", 1080, 1920, 401, "Android 6.0", "phone", 5.5, "LeEco", "le_2_pro");
    }

    private var _le_max:ScreenSpecifier;
    public function get le_max():ScreenSpecifier {
        return _le_max ||= new ScreenSpecifier("LeEco Le Max", 1440, 2560, 464, "Android 5.1", "phone", 6.33, "LeEco", "le_max");
    }

    private var _le_max_2:ScreenSpecifier;
    public function get le_max_2():ScreenSpecifier {
        return _le_max_2 ||= new ScreenSpecifier("LeEco Le Max 2", 1440, 2560, 515, "Android 6.0", "phone", 5.7, "LeEco", "le_max_2");
    }

    private var _le_pro3:ScreenSpecifier;
    public function get le_pro3():ScreenSpecifier {
        return _le_pro3 ||= new ScreenSpecifier("LeEco Le Pro3", 1080, 1920, 403, "Android 6.0", "phone", 5.5, "LeEco", "le_pro3");
    }

    private var _le_pro3_elite:ScreenSpecifier;
    public function get le_pro3_elite():ScreenSpecifier {
        return _le_pro3_elite ||= new ScreenSpecifier("LeEco Le Pro3 Elite", 1080, 1920, 401, "Android 6.0", "phone", 5.5, "LeEco", "le_pro3_elite");
    }

    private var _le_pro_3_ai_edition:ScreenSpecifier;
    public function get le_pro_3_ai_edition():ScreenSpecifier {
        return _le_pro_3_ai_edition ||= new ScreenSpecifier("LeEco Le Pro 3 AI Edition", 1080, 1920, 401, "Android 6.0", "phone", 5.5, "LeEco", "le_pro_3_ai_edition");
    }

    private var _le_s3:ScreenSpecifier;
    public function get le_s3():ScreenSpecifier {
        return _le_s3 ||= new ScreenSpecifier("LeEco Le S3", 1080, 1920, 401, "Android 6.0", "phone", 5.5, "LeEco", "le_s3");
    }


}
}
