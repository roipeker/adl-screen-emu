// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionOrange {

    public function CollectionOrange() {
    }

    private var _barcelona:ScreenSpecifier;
    public function get barcelona():ScreenSpecifier {
        return _barcelona ||= new ScreenSpecifier("Orange Barcelona", 240, 320, NaN, "Android 2.2", "phone", 2.6, "Orange", "barcelona");
    }

    private var _gova:ScreenSpecifier;
    public function get gova():ScreenSpecifier {
        return _gova ||= new ScreenSpecifier("Orange Gova", 540, 960, 245, "Android 4.3", "phone", 4.5, "Orange", "gova");
    }

    private var _hiro:ScreenSpecifier;
    public function get hiro():ScreenSpecifier {
        return _hiro ||= new ScreenSpecifier("Orange Hiro", 480, 854, 228, "Android 4.1", "phone", 4.3, "Orange", "hiro");
    }

    private var _monte_carlo:ScreenSpecifier;
    public function get monte_carlo():ScreenSpecifier {
        return _monte_carlo ||= new ScreenSpecifier("Orange Monte Carlo", 480, 800, 217, "Android 2.3", "phone", 4.3, "Orange", "monte_carlo");
    }

    private var _reyo:ScreenSpecifier;
    public function get reyo():ScreenSpecifier {
        return _reyo ||= new ScreenSpecifier("Orange Reyo", 480, 854, 196, "Android 4.2.2", "phone", 5, "Orange", "reyo");
    }

    private var _rono:ScreenSpecifier;
    public function get rono():ScreenSpecifier {
        return _rono ||= new ScreenSpecifier("Orange Rono", 720, 1280, 294, "Android 4.4.2", "phone", 5, "Orange", "rono");
    }

    private var _san_diego:ScreenSpecifier;
    public function get san_diego():ScreenSpecifier {
        return _san_diego ||= new ScreenSpecifier("Orange San Diego", 600, 1024, 297, "Android 4.0.4", "phone", 4, "Orange", "san_diego");
    }

    private var _san_francisco:ScreenSpecifier;
    public function get san_francisco():ScreenSpecifier {
        return _san_francisco ||= new ScreenSpecifier("Orange San Francisco", 480, 800, 267, "Android 2.2", "phone", 3.5, "Orange", "san_francisco");
    }

    private var _san_francisco_ii:ScreenSpecifier;
    public function get san_francisco_ii():ScreenSpecifier {
        return _san_francisco_ii ||= new ScreenSpecifier("Orange San Francisco II", 480, 800, 267, "Android 2.3", "phone", 3.5, "Orange", "san_francisco_ii");
    }

    private var _stockholm:ScreenSpecifier;
    public function get stockholm():ScreenSpecifier {
        return _stockholm ||= new ScreenSpecifier("Orange Stockholm", 240, 320, 143, "Android 2.2", "phone", 2.8, "Orange", "stockholm");
    }

    private var _tahiti:ScreenSpecifier;
    public function get tahiti():ScreenSpecifier {
        return _tahiti ||= new ScreenSpecifier("Orange Tahiti", 800, 1280, 216, "Android 3.2", "tablet", 7, "Orange", "tahiti");
    }


}
}
