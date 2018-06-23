// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionEnergizer {

    public function CollectionEnergizer() {
    }

    private var _energy_400:ScreenSpecifier;
    public function get energy_400():ScreenSpecifier {
        return _energy_400 ||= new ScreenSpecifier("Energizer Energy 400", 480, 800, 233, "Android 4.4", "phone", 4, "Energizer", "energy_400");
    }

    private var _energy_400_lte:ScreenSpecifier;
    public function get energy_400_lte():ScreenSpecifier {
        return _energy_400_lte ||= new ScreenSpecifier("Energizer Energy 400 LTE", 480, 800, 233, "Android 6.0", "phone", 4, "Energizer", "energy_400_lte");
    }

    private var _energy_500:ScreenSpecifier;
    public function get energy_500():ScreenSpecifier {
        return _energy_500 ||= new ScreenSpecifier("Energizer Energy 500", 720, 1280, 294, "Android 4.4", "phone", 5, "Energizer", "energy_500");
    }

    private var _energy_e500:ScreenSpecifier;
    public function get energy_e500():ScreenSpecifier {
        return _energy_e500 ||= new ScreenSpecifier("Energizer Energy E500", 480, 854, 196, "Android Go", "phone", 5, "Energizer", "energy_e500");
    }

    private var _energy_e500s:ScreenSpecifier;
    public function get energy_e500s():ScreenSpecifier {
        return _energy_e500s ||= new ScreenSpecifier("Energizer Energy E500S", 480, 854, 196, "Android 8.0", "phone", 5, "Energizer", "energy_e500s");
    }

    private var _energy_e520_lte:ScreenSpecifier;
    public function get energy_e520_lte():ScreenSpecifier {
        return _energy_e520_lte ||= new ScreenSpecifier("Energizer Energy E520 LTE", 720, 1280, 282, "Android 6.0", "phone", 5.2, "Energizer", "energy_e520_lte");
    }

    private var _energy_s500e:ScreenSpecifier;
    public function get energy_s500e():ScreenSpecifier {
        return _energy_s500e ||= new ScreenSpecifier("Energizer Energy S500E", 480, 854, 196, "Android 6.0", "phone", 5, "Energizer", "energy_s500e");
    }

    private var _energy_s550:ScreenSpecifier;
    public function get energy_s550():ScreenSpecifier {
        return _energy_s550 ||= new ScreenSpecifier("Energizer Energy S550", 720, 1280, 267, "Android 6.0", "phone", 5.5, "Energizer", "energy_s550");
    }

    private var _hardcase_h240s:ScreenSpecifier;
    public function get hardcase_h240s():ScreenSpecifier {
        return _hardcase_h240s ||= new ScreenSpecifier("Energizer Hardcase H240S", 240, 320, 167, "Android 6.0", "phone", 2.4, "Energizer", "hardcase_h240s");
    }

    private var _hardcase_h500s:ScreenSpecifier;
    public function get hardcase_h500s():ScreenSpecifier {
        return _hardcase_h500s ||= new ScreenSpecifier("Energizer Hardcase H500S", 720, 1280, 294, "Android 7.0", "phone", 5, "Energizer", "hardcase_h500s");
    }

    private var _hardcase_h550s:ScreenSpecifier;
    public function get hardcase_h550s():ScreenSpecifier {
        return _hardcase_h550s ||= new ScreenSpecifier("Energizer Hardcase H550S", 1080, 1920, 401, "Android 7.0", "phone", 5.5, "Energizer", "hardcase_h550s");
    }

    private var _power_max_p16k_pro:ScreenSpecifier;
    public function get power_max_p16k_pro():ScreenSpecifier {
        return _power_max_p16k_pro ||= new ScreenSpecifier("Energizer Power Max P16K Pro", 1080, 2160, 403, "Android 8.0", "phone", 5.99, "Energizer", "power_max_p16k_pro");
    }

    private var _power_max_p490:ScreenSpecifier;
    public function get power_max_p490():ScreenSpecifier {
        return _power_max_p490 ||= new ScreenSpecifier("Energizer Power Max P490", 480, 960, 217, "Android 8.0", "phone", 4.95, "Energizer", "power_max_p490");
    }

    private var _power_max_p490s:ScreenSpecifier;
    public function get power_max_p490s():ScreenSpecifier {
        return _power_max_p490s ||= new ScreenSpecifier("Energizer Power Max P490S", 480, 960, 217, "Android 8.1", "phone", 4.95, "Energizer", "power_max_p490s");
    }

    private var _power_max_p550s:ScreenSpecifier;
    public function get power_max_p550s():ScreenSpecifier {
        return _power_max_p550s ||= new ScreenSpecifier("Energizer Power Max P550S", 720, 1280, 267, "Android 7.0", "phone", 5.5, "Energizer", "power_max_p550s");
    }

    private var _power_max_p600s:ScreenSpecifier;
    public function get power_max_p600s():ScreenSpecifier {
        return _power_max_p600s ||= new ScreenSpecifier("Energizer Power Max P600S", 1080, 2160, 409, "Android 7.0", "phone", 5.9, "Energizer", "power_max_p600s");
    }


}
}
