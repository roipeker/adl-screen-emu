// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionKyocera {

    public function CollectionKyocera() {
    }

    private var _brigadier:ScreenSpecifier;
    public function get brigadier():ScreenSpecifier {
        return _brigadier ||= new ScreenSpecifier("Kyocera Brigadier", 720, 1280, 326, "Android 4.4.2", "phone", 4.5, "Kyocera", "brigadier");
    }

    private var _duraforce:ScreenSpecifier;
    public function get duraforce():ScreenSpecifier {
        return _duraforce ||= new ScreenSpecifier("Kyocera DuraForce", 720, 1280, 326, "Android 4.4.2", "phone", 4.5, "Kyocera", "duraforce");
    }

    private var _duraforce_pro:ScreenSpecifier;
    public function get duraforce_pro():ScreenSpecifier {
        return _duraforce_pro ||= new ScreenSpecifier("Kyocera DuraForce Pro", 1080, 1920, 441, "Android 6.0", "phone", 5, "Kyocera", "duraforce_pro");
    }

    private var _duraforce_xd:ScreenSpecifier;
    public function get duraforce_xd():ScreenSpecifier {
        return _duraforce_xd ||= new ScreenSpecifier("Kyocera DuraForce XD", 720, 1280, 258, "Android 5.1", "phone", 5.7, "Kyocera", "duraforce_xd");
    }

    private var _echo:ScreenSpecifier;
    public function get echo():ScreenSpecifier {
        return _echo ||= new ScreenSpecifier("Kyocera Echo", 480, 800, 267, "Android 2.3", "phone", 3.5, "Kyocera", "echo");
    }

    private var _hydro_c5170:ScreenSpecifier;
    public function get hydro_c5170():ScreenSpecifier {
        return _hydro_c5170 ||= new ScreenSpecifier("Kyocera Hydro C5170", 320, 480, 165, "Android 4.0", "phone", 3.5, "Kyocera", "hydro_c5170");
    }

    private var _hydro_elite:ScreenSpecifier;
    public function get hydro_elite():ScreenSpecifier {
        return _hydro_elite ||= new ScreenSpecifier("Kyocera Hydro Elite", 720, 1280, 342, "Android 4.1.2", "phone", 4.3, "Kyocera", "hydro_elite");
    }

    private var _hydro_life:ScreenSpecifier;
    public function get hydro_life():ScreenSpecifier {
        return _hydro_life ||= new ScreenSpecifier("Kyocera Hydro Life", 540, 960, 245, "Android 4.3", "phone", 4.5, "Kyocera", "hydro_life");
    }

    private var _milano_c5120:ScreenSpecifier;
    public function get milano_c5120():ScreenSpecifier {
        return _milano_c5120 ||= new ScreenSpecifier("Kyocera Milano C5120", 240, 320, 133, "Android 2.3", "phone", 3, "Kyocera", "milano_c5120");
    }

    private var _milano_c5121:ScreenSpecifier;
    public function get milano_c5121():ScreenSpecifier {
        return _milano_c5121 ||= new ScreenSpecifier("Kyocera Milano C5121", 240, 320, 133, "Android 2.3", "phone", 3, "Kyocera", "milano_c5121");
    }

    private var _rise_c5155:ScreenSpecifier;
    public function get rise_c5155():ScreenSpecifier {
        return _rise_c5155 ||= new ScreenSpecifier("Kyocera Rise C5155", 320, 480, 165, "Android 4.0", "phone", 3.5, "Kyocera", "rise_c5155");
    }

    private var _torque_e6710:ScreenSpecifier;
    public function get torque_e6710():ScreenSpecifier {
        return _torque_e6710 ||= new ScreenSpecifier("Kyocera Torque E6710", 480, 800, 233, "Android 4.0.4", "phone", 4, "Kyocera", "torque_e6710");
    }


}
}
