// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package com.roipeker.utils.adl.collections.brands {
import com.roipeker.utils.adl.ScreenSpecifier;

public class CollectionApple {

    public function CollectionApple() {
    }

    private var _ipad_2:ScreenSpecifier;
    public function get ipad_2():ScreenSpecifier {
        return _ipad_2 ||= new ScreenSpecifier("Apple iPad 2 Wi-Fi", 768, 1024, 132, "iOS 9.3.5", "tablet", 9.7, "Apple", "ipad_2");
    }
    
    private var _ipad_3:ScreenSpecifier;
    public function get ipad_3():ScreenSpecifier {
        return _ipad_3 ||= new ScreenSpecifier("Apple iPad 3 Wi-Fi", 1536, 2048, 264, "iOS 9.3.5", "tablet", 9.7, "Apple", "ipad_3");
    }

    private var _ipad_4:ScreenSpecifier;
    public function get ipad_4():ScreenSpecifier {
        return _ipad_4 ||= new ScreenSpecifier("Apple iPad 4 Wi-Fi", 1536, 2048, 264, "iOS 10.3", "tablet", 9.7, "Apple", "ipad_4");
    }

    private var _ipad_9_7_2017:ScreenSpecifier;
    public function get ipad_9_7_2017():ScreenSpecifier {
        return _ipad_9_7_2017 ||= new ScreenSpecifier("Apple iPad 9.7 (2017)", 1536, 2048, 264, "iOS 11.4", "tablet", 9.7, "Apple", "ipad_9_7_2017");
    }

    private var _ipad_9_7_2018:ScreenSpecifier;
    public function get ipad_9_7_2018():ScreenSpecifier {
        return _ipad_9_7_2018 ||= new ScreenSpecifier("Apple iPad 9.7 (2018)", 1536, 2048, 264, "iOS 11.4", "tablet", 9.7, "Apple", "ipad_9_7_2018");
    }

    private var _ipad_air:ScreenSpecifier;
    public function get ipad_air():ScreenSpecifier {
        return _ipad_air ||= new ScreenSpecifier("Apple iPad Air", 1536, 2048, 264, "iOS 11.4", "tablet", 9.7, "Apple", "ipad_air");
    }

    private var _ipad_air_2:ScreenSpecifier;
    public function get ipad_air_2():ScreenSpecifier {
        return _ipad_air_2 ||= new ScreenSpecifier("Apple iPad Air 2", 1536, 2048, 264, "iOS 11.4", "tablet", 9.7, "Apple", "ipad_air_2");
    }

    private var _ipad_mini_2:ScreenSpecifier;
    public function get ipad_mini_2():ScreenSpecifier {
        return _ipad_mini_2 ||= new ScreenSpecifier("Apple iPad mini 2", 1536, 2048, 324, "iOS 11.4", "tablet", 7.9, "Apple", "ipad_mini_2");
    }

    private var _ipad_mini_3:ScreenSpecifier;
    public function get ipad_mini_3():ScreenSpecifier {
        return _ipad_mini_3 ||= new ScreenSpecifier("Apple iPad mini 3", 1536, 2048, 324, "iOS 11.4", "tablet", 7.9, "Apple", "ipad_mini_3");
    }

    private var _ipad_mini_4:ScreenSpecifier;
    public function get ipad_mini_4():ScreenSpecifier {
        return _ipad_mini_4 ||= new ScreenSpecifier("Apple iPad mini 4", 1536, 2048, 324, "iOS 11.4", "tablet", 7.9, "Apple", "ipad_mini_4");
    }

    private var _ipad_mini:ScreenSpecifier;
    public function get ipad_mini():ScreenSpecifier {
        return _ipad_mini ||= new ScreenSpecifier("Apple iPad mini Wi-Fi", 768, 1024, 162, "iOS 9.3.5", "tablet", 7.9, "Apple", "ipad_mini");
    }

    private var _ipad_pro_10_5_2017:ScreenSpecifier;
    public function get ipad_pro_10_5_2017():ScreenSpecifier {
        return _ipad_pro_10_5_2017 ||= new ScreenSpecifier("Apple iPad Pro 10.5 (2017)", 1668, 2224, 265, "iOS 11.4", "tablet", 10.5, "Apple", "ipad_pro_10_5_2017");
    }

    private var _ipad_pro_12_9_2015:ScreenSpecifier;
    public function get ipad_pro_12_9_2015():ScreenSpecifier {
        return _ipad_pro_12_9_2015 ||= new ScreenSpecifier("Apple iPad Pro 12.9 (2015)", 2048, 2732, 264, "iOS 11.4", "tablet", 12.9, "Apple", "ipad_pro_12_9_2015");
    }

    private var _ipad_pro_12_9_2017:ScreenSpecifier;
    public function get ipad_pro_12_9_2017():ScreenSpecifier {
        return _ipad_pro_12_9_2017 ||= new ScreenSpecifier("Apple iPad Pro 12.9 (2017)", 2732, 2048, 265, "iOS 11.4", "tablet", 12.9, "Apple", "ipad_pro_12_9_2017");
    }

    private var _ipad_pro_9_7_2016:ScreenSpecifier;
    public function get ipad_pro_9_7_2016():ScreenSpecifier {
        return _ipad_pro_9_7_2016 ||= new ScreenSpecifier("Apple iPad Pro 9.7 (2016)", 1536, 2048, 264, "iOS 11.4", "tablet", 9.7, "Apple", "ipad_pro_9_7_2016");
    }

    private var _ipad:ScreenSpecifier;
    public function get ipad():ScreenSpecifier {
        return _ipad ||= new ScreenSpecifier("Apple iPad Wi-Fi", 768, 1024, 132, "iOS 5.1.1", "tablet", 9.7, "Apple", "ipad");
    }

    private var _iphone:ScreenSpecifier;
    public function get iphone():ScreenSpecifier {
        return _iphone ||= new ScreenSpecifier("Apple iPhone", 320, 480, 165, "iOS 3.1.3", "phone", 3.5, "Apple", "iphone");
    }

    private var _iphone_3g:ScreenSpecifier;
    public function get iphone_3g():ScreenSpecifier {
        return _iphone_3g ||= new ScreenSpecifier("Apple iPhone 3G", 320, 480, 165, "iOS 4.2.1", "phone", 3.5, "Apple", "iphone_3g");
    }

    private var _iphone_3gs:ScreenSpecifier;
    public function get iphone_3gs():ScreenSpecifier {
        return _iphone_3gs ||= new ScreenSpecifier("Apple iPhone 3GS", 320, 480, 165, "iOS 6.1.6", "phone", 3.5, "Apple", "iphone_3gs");
    }

    private var _iphone_4:ScreenSpecifier;
    public function get iphone_4():ScreenSpecifier {
        return _iphone_4 ||= new ScreenSpecifier("Apple iPhone 4", 640, 960, 330, "iOS 7.1.2", "phone", 3.5, "Apple", "iphone_4");
    }

    private var _iphone_4s:ScreenSpecifier;
    public function get iphone_4s():ScreenSpecifier {
        return _iphone_4s ||= new ScreenSpecifier("Apple iPhone 4s", 640, 960, 330, "iOS 9.3.5", "phone", 3.5, "Apple", "iphone_4s");
    }

    private var _iphone_5:ScreenSpecifier;
    public function get iphone_5():ScreenSpecifier {
        return _iphone_5 ||= new ScreenSpecifier("Apple iPhone 5", 640, 1136, 326, "iOS 10.3.3", "phone", 4, "Apple", "iphone_5");
    }

    private var _iphone_5c:ScreenSpecifier;
    public function get iphone_5c():ScreenSpecifier {
        return _iphone_5c ||= new ScreenSpecifier("Apple iPhone 5c", 640, 1136, 326, "iOS 10.3.3", "phone", 4, "Apple", "iphone_5c");
    }

    private var _iphone_5s:ScreenSpecifier;
    public function get iphone_5s():ScreenSpecifier {
        return _iphone_5s ||= new ScreenSpecifier("Apple iPhone 5s", 640, 1136, 326, "iOS 11.4", "phone", 4, "Apple", "iphone_5s");
    }

    private var _iphone_6:ScreenSpecifier;
    public function get iphone_6():ScreenSpecifier {
        return _iphone_6 ||= new ScreenSpecifier("Apple iPhone 6", 750, 1334, 326, "iOS 11.4", "phone", 4.7, "Apple", "iphone_6");
    }

    private var _iphone_6_plus:ScreenSpecifier;
    public function get iphone_6_plus():ScreenSpecifier {
//        return _iphone_6_plus ||= new ScreenSpecifier("Apple iPhone 6 Plus", 1080, 1920, 401, "iOS 11.4", "phone", 5.5, "Apple", "iphone_6_plus");
        return _iphone_6_plus ||= new ScreenSpecifier("Apple iPhone 6 Plus", 1242, 2208, 401, "iOS 11.4", "phone", 5.5, "Apple", "iphone_6_plus");
    }

    private var _iphone_6s:ScreenSpecifier;
    public function get iphone_6s():ScreenSpecifier {
        return _iphone_6s ||= new ScreenSpecifier("Apple iPhone 6s", 750, 1334, 326, "iOS 11.4", "phone", 4.7, "Apple", "iphone_6s");
    }

    private var _iphone_6s_plus:ScreenSpecifier;
    public function get iphone_6s_plus():ScreenSpecifier {
        return _iphone_6s_plus ||= new ScreenSpecifier("Apple iPhone 6s Plus",  1242, 2208, 401, "iOS 11.4", "phone", 5.5, "Apple", "iphone_6s_plus");
    }

    private var _iphone_7:ScreenSpecifier;
    public function get iphone_7():ScreenSpecifier {
        return _iphone_7 ||= new ScreenSpecifier("Apple iPhone 7", 750, 1334, 326, "iOS 11.4", "phone", 4.7, "Apple", "iphone_7");
    }

    private var _iphone_7_plus:ScreenSpecifier;
    public function get iphone_7_plus():ScreenSpecifier {
        return _iphone_7_plus ||= new ScreenSpecifier("Apple iPhone 7 Plus",  1242, 2208, 401, "iOS 11.4", "phone", 5.5, "Apple", "iphone_7_plus");
    }

    private var _iphone_8:ScreenSpecifier;
    public function get iphone_8():ScreenSpecifier {
        return _iphone_8 ||= new ScreenSpecifier("Apple iPhone 8", 750, 1334, 326, "iOS 11.4", "phone", 4.7, "Apple", "iphone_8");
    }

    private var _iphone_8_plus:ScreenSpecifier;
    public function get iphone_8_plus():ScreenSpecifier {
        return _iphone_8_plus ||= new ScreenSpecifier("Apple iPhone 8 Plus",  1242, 2208,401, "iOS 11.4", "phone", 5.5, "Apple", "iphone_8_plus");
    }

    private var _iphone_se:ScreenSpecifier;
    public function get iphone_se():ScreenSpecifier {
        return _iphone_se ||= new ScreenSpecifier("Apple iPhone SE", 640, 1136, 326, "iOS 11.4", "phone", 4, "Apple", "iphone_se");
    }

    private var _iphone_x:ScreenSpecifier;
    public function get iphone_x():ScreenSpecifier {
        return _iphone_x ||= new ScreenSpecifier("Apple iPhone X", 1125, 2436, 458, "iOS 11.4", "phone", 5.8, "Apple", "iphone_x");
    }


}
}
