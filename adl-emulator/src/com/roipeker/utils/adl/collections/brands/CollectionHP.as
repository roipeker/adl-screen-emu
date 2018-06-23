// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionHP {

    public function CollectionHP() {
    }

    private var _hp_10_plus:ScreenSpecifier;
    public function get hp_10_plus():ScreenSpecifier {
        return _hp_10_plus ||= new ScreenSpecifier("HP 10 Plus", 1920, 1200, 224, "Android 4.4.2", "tablet", 10.1, "HP", "hp_10_plus");
    }

    private var _hp_7_plus:ScreenSpecifier;
    public function get hp_7_plus():ScreenSpecifier {
        return _hp_7_plus ||= new ScreenSpecifier("HP 7 Plus", 600, 1024, 170, "Android 4.2.2", "tablet", 7, "HP", "hp_7_plus");
    }

    private var _hp_7_voicetab:ScreenSpecifier;
    public function get hp_7_voicetab():ScreenSpecifier {
        return _hp_7_voicetab ||= new ScreenSpecifier("HP 7 VoiceTab", 600, 1024, 171, "Android 4.4.2", "phone", 6.95, "HP", "hp_7_voicetab");
    }

    private var _hp_8:ScreenSpecifier;
    public function get hp_8():ScreenSpecifier {
        return _hp_8 ||= new ScreenSpecifier("HP 8", 768, 1024, 163, "Android 4.2.2", "tablet", 7.85, "HP", "hp_8");
    }

    private var _pro_slate_10_ee_g1:ScreenSpecifier;
    public function get pro_slate_10_ee_g1():ScreenSpecifier {
        return _pro_slate_10_ee_g1 ||= new ScreenSpecifier("HP Pro Slate 10 EE G1", 800, 1280, 149, "Android 4.4.4", "tablet", 10.1, "HP", "pro_slate_10_ee_g1");
    }

    private var _pro_slate_12:ScreenSpecifier;
    public function get pro_slate_12():ScreenSpecifier {
        return _pro_slate_12 ||= new ScreenSpecifier("HP Pro Slate 12", 1200, 1600, 163, "Android 4.4.4", "tablet", 12.3, "HP", "pro_slate_12");
    }

    private var _pro_slate_8:ScreenSpecifier;
    public function get pro_slate_8():ScreenSpecifier {
        return _pro_slate_8 ||= new ScreenSpecifier("HP Pro Slate 8", 1536, 2048, 326, "Android 4.4.4", "tablet", 7.86, "HP", "pro_slate_8");
    }

    private var _slate10_hd:ScreenSpecifier;
    public function get slate10_hd():ScreenSpecifier {
        return _slate10_hd ||= new ScreenSpecifier("HP Slate10 HD", 800, 1280, 151, "Android 4.2.2", "tablet", 10, "HP", "slate10_hd");
    }

    private var _slate6_voicetab:ScreenSpecifier;
    public function get slate6_voicetab():ScreenSpecifier {
        return _slate6_voicetab ||= new ScreenSpecifier("HP Slate6 VoiceTab", 720, 1280, 245, "Android 4.3", "phone", 6, "HP", "slate6_voicetab");
    }

    private var _slate6_voicetab_ii:ScreenSpecifier;
    public function get slate6_voicetab_ii():ScreenSpecifier {
        return _slate6_voicetab_ii ||= new ScreenSpecifier("HP Slate6 VoiceTab II", 720, 1280, 245, "Android 4.4.2", "phone", 6, "HP", "slate6_voicetab_ii");
    }

    private var _slate7_extreme:ScreenSpecifier;
    public function get slate7_extreme():ScreenSpecifier {
        return _slate7_extreme ||= new ScreenSpecifier("HP Slate7 Extreme", 800, 1280, 216, "Android 4.2.2", "tablet", 7, "HP", "slate7_extreme");
    }

    private var _slate7_plus:ScreenSpecifier;
    public function get slate7_plus():ScreenSpecifier {
        return _slate7_plus ||= new ScreenSpecifier("HP Slate7 Plus", 800, 1280, 216, "Android 4.2.2", "tablet", 7, "HP", "slate7_plus");
    }

    private var _slate7_voicetab:ScreenSpecifier;
    public function get slate7_voicetab():ScreenSpecifier {
        return _slate7_voicetab ||= new ScreenSpecifier("HP Slate7 VoiceTab", 800, 1280, 216, "Android 4.2.2", "phone", 7, "HP", "slate7_voicetab");
    }

    private var _slate7_voicetab_ultra:ScreenSpecifier;
    public function get slate7_voicetab_ultra():ScreenSpecifier {
        return _slate7_voicetab_ultra ||= new ScreenSpecifier("HP Slate7 VoiceTab Ultra", 1200, 1920, 323, "Android 4.2.2", "phone", 7, "HP", "slate7_voicetab_ultra");
    }

    private var _slate8_pro:ScreenSpecifier;
    public function get slate8_pro():ScreenSpecifier {
        return _slate8_pro ||= new ScreenSpecifier("HP Slate8 Pro", 1200, 1600, 250, "Android 4.2.2", "tablet", 8, "HP", "slate8_pro");
    }

    private var _slate_17:ScreenSpecifier;
    public function get slate_17():ScreenSpecifier {
        return _slate_17 ||= new ScreenSpecifier("HP Slate 17", 1080, 1920, 127, "Android 4.4.2", "tablet", 17.3, "HP", "slate_17");
    }

    private var _slate_7:ScreenSpecifier;
    public function get slate_7():ScreenSpecifier {
        return _slate_7 ||= new ScreenSpecifier("HP Slate 7", 600, 1024, 170, "Android 4.1", "tablet", 7, "HP", "slate_7");
    }


}
}
