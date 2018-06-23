// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionDell {

    public function CollectionDell() {
    }

    private var _aero:ScreenSpecifier;
    public function get aero():ScreenSpecifier {
        return _aero ||= new ScreenSpecifier("Dell Aero", 360, 640, 210, "Android 1.5", "phone", 3.5, "Dell", "aero");
    }

    private var _flash:ScreenSpecifier;
    public function get flash():ScreenSpecifier {
        return _flash ||= new ScreenSpecifier("Dell Flash", 480, 800, 267, "Android 2.2", "phone", 3.5, "Dell", "flash");
    }

    private var _mini_3ix:ScreenSpecifier;
    public function get mini_3ix():ScreenSpecifier {
        return _mini_3ix ||= new ScreenSpecifier("Dell Mini 3iX", 360, 640, 210, "Android 1.5", "phone", 3.5, "Dell", "mini_3ix");
    }

    private var _smoke:ScreenSpecifier;
    public function get smoke():ScreenSpecifier {
        return _smoke ||= new ScreenSpecifier("Dell Smoke", 240, 320, 143, "Android 2.2", "phone", 2.8, "Dell", "smoke");
    }

    private var _streak:ScreenSpecifier;
    public function get streak():ScreenSpecifier {
        return _streak ||= new ScreenSpecifier("Dell Streak", 480, 800, 187, "Android 2.2", "phone", 5, "Dell", "streak");
    }

    private var _streak_10_pro:ScreenSpecifier;
    public function get streak_10_pro():ScreenSpecifier {
        return _streak_10_pro ||= new ScreenSpecifier("Dell Streak 10 Pro", 800, 1280, 149, "Android 3.2", "tablet", 10.1, "Dell", "streak_10_pro");
    }

    private var _streak_7:ScreenSpecifier;
    public function get streak_7():ScreenSpecifier {
        return _streak_7 ||= new ScreenSpecifier("Dell Streak 7", 480, 800, 133, "Android 3.2", "tablet", 7, "Dell", "streak_7");
    }

    private var _streak_7_wi_fi:ScreenSpecifier;
    public function get streak_7_wi_fi():ScreenSpecifier {
        return _streak_7_wi_fi ||= new ScreenSpecifier("Dell Streak 7 Wi-Fi", 480, 800, 133, "Android 2.3", "tablet", 7, "Dell", "streak_7_wi_fi");
    }

    private var _venue:ScreenSpecifier;
    public function get venue():ScreenSpecifier {
        return _venue ||= new ScreenSpecifier("Dell Venue", 480, 800, 228, "Android 2.2", "phone", 4.1, "Dell", "venue");
    }

    private var _venue_7:ScreenSpecifier;
    public function get venue_7():ScreenSpecifier {
        return _venue_7 ||= new ScreenSpecifier("Dell Venue 7", 800, 1280, 216, "Android 4.2.2", "tablet", 7, "Dell", "venue_7");
    }

    private var _venue_7_8_gb:ScreenSpecifier;
    public function get venue_7_8_gb():ScreenSpecifier {
        return _venue_7_8_gb ||= new ScreenSpecifier("Dell Venue 7 8 GB", 800, 1280, 216, "Android 4.2.2", "tablet", 7, "Dell", "venue_7_8_gb");
    }

    private var _venue_8:ScreenSpecifier;
    public function get venue_8():ScreenSpecifier {
        return _venue_8 ||= new ScreenSpecifier("Dell Venue 8", 800, 1280, 189, "Android 4.2.2", "tablet", 8, "Dell", "venue_8");
    }

    private var _venue_8_7000:ScreenSpecifier;
    public function get venue_8_7000():ScreenSpecifier {
        return _venue_8_7000 ||= new ScreenSpecifier("Dell Venue 8 7000", 1600, 2560, 359, "Android 5.0.2", "tablet", 8.4, "Dell", "venue_8_7000");
    }

    private var _xcd28:ScreenSpecifier;
    public function get xcd28():ScreenSpecifier {
        return _xcd28 ||= new ScreenSpecifier("Dell XCD28", 240, 320, 143, "Android 2.1", "phone", 2.8, "Dell", "xcd28");
    }

    private var _xcd35:ScreenSpecifier;
    public function get xcd35():ScreenSpecifier {
        return _xcd35 ||= new ScreenSpecifier("Dell XCD35", 480, 800, 267, "Android 2.1", "phone", 3.5, "Dell", "xcd35");
    }


}
}
