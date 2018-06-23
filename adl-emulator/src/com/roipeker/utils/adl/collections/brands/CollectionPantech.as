// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionPantech {

    public function CollectionPantech() {
    }

    private var _breakout:ScreenSpecifier;
    public function get breakout():ScreenSpecifier {
        return _breakout ||= new ScreenSpecifier("Pantech Breakout", 480, 800, 233, "Android 2.3", "phone", 4, "Pantech", "breakout");
    }

    private var _burst:ScreenSpecifier;
    public function get burst():ScreenSpecifier {
        return _burst ||= new ScreenSpecifier("Pantech Burst", 480, 800, 233, "Android 4.0", "phone", 4, "Pantech", "burst");
    }

    private var _discover:ScreenSpecifier;
    public function get discover():ScreenSpecifier {
        return _discover ||= new ScreenSpecifier("Pantech Discover", 720, 1280, 306, "Android 4.0.4", "phone", 4.8, "Pantech", "discover");
    }

    private var _element:ScreenSpecifier;
    public function get element():ScreenSpecifier {
        return _element ||= new ScreenSpecifier("Pantech Element", 768, 1024, 160, "Android 4.0", "tablet", 8, "Pantech", "element");
    }

    private var _flex__p8010:ScreenSpecifier;
    public function get flex__p8010():ScreenSpecifier {
        return _flex__p8010 ||= new ScreenSpecifier("Pantech Flex  P8010", 540, 960, 256, "Android 4.1.2", "phone", 4.3, "Pantech", "flex__p8010");
    }

    private var _marauder:ScreenSpecifier;
    public function get marauder():ScreenSpecifier {
        return _marauder ||= new ScreenSpecifier("Pantech Marauder", 480, 800, 246, "Android 4.0", "phone", 3.8, "Pantech", "marauder");
    }

    private var _pocket_p9060:ScreenSpecifier;
    public function get pocket_p9060():ScreenSpecifier {
        return _pocket_p9060 ||= new ScreenSpecifier("Pantech Pocket P9060", 600, 800, 250, "Android 2.3", "phone", 4, "Pantech", "pocket_p9060");
    }

    private var _sky_izar_im_a630k:ScreenSpecifier;
    public function get sky_izar_im_a630k():ScreenSpecifier {
        return _sky_izar_im_a630k ||= new ScreenSpecifier("Pantech SKY Izar IM-A630K", 480, 800, 292, "Android 2.1", "phone", 3.2, "Pantech", "sky_izar_im_a630k");
    }

    private var _vega_lte_ex_im_a820l:ScreenSpecifier;
    public function get vega_lte_ex_im_a820l():ScreenSpecifier {
        return _vega_lte_ex_im_a820l ||= new ScreenSpecifier("Pantech Vega LTE EX IM-A820L", 800, 1280, 335, "Android 2.3", "phone", 4.5, "Pantech", "vega_lte_ex_im_a820l");
    }

    private var _vega_no_6:ScreenSpecifier;
    public function get vega_no_6():ScreenSpecifier {
        return _vega_no_6 ||= new ScreenSpecifier("Pantech Vega No 6", 1080, 1920, 373, "Android 4.1.2", "phone", 5.9, "Pantech", "vega_no_6");
    }

    private var _vega_r3_im_a850l:ScreenSpecifier;
    public function get vega_r3_im_a850l():ScreenSpecifier {
        return _vega_r3_im_a850l ||= new ScreenSpecifier("Pantech Vega R3 IM-A850L", 720, 1280, 277, "Android 4.0.4", "phone", 5.3, "Pantech", "vega_r3_im_a850l");
    }

    private var _vega_racer_2_im_a830l:ScreenSpecifier;
    public function get vega_racer_2_im_a830l():ScreenSpecifier {
        return _vega_racer_2_im_a830l ||= new ScreenSpecifier("Pantech Vega Racer 2 IM-A830L", 720, 1280, 306, "Android 4.0", "phone", 4.8, "Pantech", "vega_racer_2_im_a830l");
    }

    private var _vega_xpress_im_a720l:ScreenSpecifier;
    public function get vega_xpress_im_a720l():ScreenSpecifier {
        return _vega_xpress_im_a720l ||= new ScreenSpecifier("Pantech Vega Xpress IM-A720L", 480, 800, 233, "Android 2.2", "phone", 4, "Pantech", "vega_xpress_im_a720l");
    }


}
}
