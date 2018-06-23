// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionYU {

    public function CollectionYU() {
    }

    private var _yunicorn:ScreenSpecifier;
    public function get yunicorn():ScreenSpecifier {
        return _yunicorn ||= new ScreenSpecifier("YU Yunicorn", 1080, 1920, 401, "Android 5.1.1", "phone", 5.5, "YU", "yunicorn");
    }

    private var _yunique:ScreenSpecifier;
    public function get yunique():ScreenSpecifier {
        return _yunique ||= new ScreenSpecifier("YU Yunique", 720, 1280, 312, "Android 5.1.1", "phone", 4.7, "YU", "yunique");
    }

    private var _yunique_2:ScreenSpecifier;
    public function get yunique_2():ScreenSpecifier {
        return _yunique_2 ||= new ScreenSpecifier("YU Yunique 2", 720, 1280, 294, "Android 7.0", "phone", 5, "YU", "yunique_2");
    }

    private var _yunique_plus:ScreenSpecifier;
    public function get yunique_plus():ScreenSpecifier {
        return _yunique_plus ||= new ScreenSpecifier("YU Yunique Plus", 720, 1280, 312, "Android 5.1.1", "phone", 4.7, "YU", "yunique_plus");
    }

    private var _yuphoria:ScreenSpecifier;
    public function get yuphoria():ScreenSpecifier {
        return _yuphoria ||= new ScreenSpecifier("YU Yuphoria", 720, 1280, 294, "Android 5.0.2 - YU5010A model", "phone", 5, "YU", "yuphoria");
    }

    private var _yureka:ScreenSpecifier;
    public function get yureka():ScreenSpecifier {
        return _yureka ||= new ScreenSpecifier("YU Yureka", 720, 1280, 267, "Android 5.1", "phone", 5.5, "YU", "yureka");
    }

    private var _yureka_2:ScreenSpecifier;
    public function get yureka_2():ScreenSpecifier {
        return _yureka_2 ||= new ScreenSpecifier("YU Yureka 2", 1080, 1920, 401, "Android 6.0", "phone", 5.5, "YU", "yureka_2");
    }

    private var _yureka_black:ScreenSpecifier;
    public function get yureka_black():ScreenSpecifier {
        return _yureka_black ||= new ScreenSpecifier("YU Yureka Black", 1080, 1920, 441, "Android 6.0", "phone", 5, "YU", "yureka_black");
    }

    private var _yureka_note:ScreenSpecifier;
    public function get yureka_note():ScreenSpecifier {
        return _yureka_note ||= new ScreenSpecifier("YU Yureka Note", 1080, 1920, 367, "Android 5.1.1", "phone", 6, "YU", "yureka_note");
    }

    private var _yureka_plus:ScreenSpecifier;
    public function get yureka_plus():ScreenSpecifier {
        return _yureka_plus ||= new ScreenSpecifier("YU Yureka Plus", 1080, 1920, 401, "Android 5.1", "phone", 5.5, "YU", "yureka_plus");
    }

    private var _yureka_s:ScreenSpecifier;
    public function get yureka_s():ScreenSpecifier {
        return _yureka_s ||= new ScreenSpecifier("YU Yureka S", 1080, 1920, 424, "Android 5.1.1", "phone", 5.2, "YU", "yureka_s");
    }

    private var _yutopia:ScreenSpecifier;
    public function get yutopia():ScreenSpecifier {
        return _yutopia ||= new ScreenSpecifier("YU Yutopia", 1440, 2560, 565, "Android 5.1.1", "phone", 5.2, "YU", "yutopia");
    }


}
}
