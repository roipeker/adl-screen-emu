// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionCasio {

    public function CollectionCasio() {
    }

    private var _gzone_ca_201l:ScreenSpecifier;
    public function get gzone_ca_201l():ScreenSpecifier {
        return _gzone_ca_201l ||= new ScreenSpecifier("Casio G'zOne CA-201L", 480, 800, 233, "Android 4.0", "phone", 4, "Casio", "gzone_ca_201l");
    }

    private var _gzone_commando:ScreenSpecifier;
    public function get gzone_commando():ScreenSpecifier {
        return _gzone_commando ||= new ScreenSpecifier("Casio G'zOne Commando", 480, 800, 259, "Android 2.3", "phone", 3.6, "Casio", "gzone_commando");
    }


}
}
