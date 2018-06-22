// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 18/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections {
import com.roipeker.utils.adl.*;

public class ScreenTypesIOS {

    public static function get ipad_1():ScreenDefinition {
        return new ScreenDefinition("Apple iPad 1", 768, 1024, 132, 9.7, ScreenDefinition.IOS);
    }

    public static function get ipad_2():ScreenDefinition {
        return ipad_1.setName("Apple iPad 1");
    }

    public static function get ipad_3():ScreenDefinition {
        return new ScreenDefinition("Apple iPad 3", 1536, 2048, 264, 9.7, ScreenDefinition.IOS);
    }

    public static function get ipad_air_1():ScreenDefinition {
        return new ScreenDefinition("Apple iPad Air 1", 1536, 2048, 264, 9.7, ScreenDefinition.IOS);
    }

    public static function get ipad_air_2():ScreenDefinition {
        return ipad_air_1.setName("Apple iPad Air 2");
    }

    public static function get ipad_mini():ScreenDefinition {
        return new ScreenDefinition("Apple iPad mini", 768, 1024, 162, 7.9, ScreenDefinition.IOS);
    }

    public static function get ipad_mini_retina():ScreenDefinition {
        return new ScreenDefinition("Apple iPad mini Retina", 1536, 2048, 324, 7.9, ScreenDefinition.IOS);
    }

    public static function get ipad_pro_12_9():ScreenDefinition {
        return new ScreenDefinition("Apple iPad Pro 12.9", 2048, 2732, 264, 12.9, ScreenDefinition.IOS);
    }

    public static function get ipad_pro_10_5():ScreenDefinition {
        return new ScreenDefinition("Apple iPad Pro 10.5", 1668, 2224, 264, 10.5, ScreenDefinition.IOS);
    }

    public static function get iphone_1():ScreenDefinition {
        return new ScreenDefinition("Apple iPhone 1", 320, 480, 165, 3.5, ScreenDefinition.IOS);
    }

    public static function get iphone_3g():ScreenDefinition {
        return iphone_1.setName("Apple iPhone 3G");
    }

    public static function get iphone_3gs():ScreenDefinition {
        return iphone_1.setName("Apple iPhone 3GS");
    }

    public static function get iphone_4():ScreenDefinition {
        return new ScreenDefinition("Apple iPhone 4, 4S", 640, 960, 330, 3.5, ScreenDefinition.IOS);
    }

    public static function get iphone_4s():ScreenDefinition {
        return iphone_4.setName("Apple iPhone 4S");
    }

    public static function get iphone_5():ScreenDefinition {
        return new ScreenDefinition("Apple iPhone 5", 640, 1136, 326, 4, ScreenDefinition.IOS);
    }

    public static function get iphone_5s():ScreenDefinition {
        return iphone_5.setName("Apple iPhone 5S");
    }

    public static function get iphone_5c():ScreenDefinition {
        return iphone_5.setName("Apple iPhone 5C");
    }

    public static function get iphone_SE():ScreenDefinition {
        return iphone_5.setName("Apple iPhone SE");
    }

    public static function get iphone_6():ScreenDefinition {
        return new ScreenDefinition("Apple iPhone 6", 750, 1334, 326, 4.7, ScreenDefinition.IOS);
    }

    public static function get iphone_6s():ScreenDefinition {
        return iphone_6.setName("Apple iPhone 6S");
    }

    public static function get iphone_7():ScreenDefinition {
        return iphone_6.setName("Apple iPhone 7");
    }

    public static function get iphone_8():ScreenDefinition {
        return iphone_6.setName("Apple iPhone 8");
    }

    public static function get iphone_6_plus():ScreenDefinition {
        return new ScreenDefinition("Apple iPhone 6 Plus", 1242, 2208, 401, 5.5, ScreenDefinition.IOS);
    }

    public static function get iphone_6s_plus():ScreenDefinition {
        return iphone_6_plus.setName("Apple iPhone 6S Plus");
    }

    public static function get iphone_7_plus():ScreenDefinition {
        return iphone_6_plus.setName("Apple iPhone 7 Plus");
    }

    public static function get iphone_8_plus():ScreenDefinition {
        return iphone_6_plus.setName("Apple iPhone 8 Plus");
    }

    public static function get iphone_x():ScreenDefinition {
        return new ScreenDefinition("Apple iPhone X", 1125, 2436, 463, 5.8, ScreenDefinition.IOS);
    }

}
}
