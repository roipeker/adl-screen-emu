// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 23/06/2018.
//
// =================================================================================================

package {
import flash.filesystem.File;

public class AppHelper {

    // set the folder name in the root directory that will be used as "appDir" folder.
    public static var adlBinFolderName:String = "assets";

    private static var _appDir:File;
    private static var _isADL:Boolean;

    public function AppHelper() {}

    private static function init():void {
        // init app folder.
        _appDir = File.applicationDirectory;
        _isADL = File.applicationDirectory.name.indexOf("bin") > -1;
        if (_isADL) {
            _appDir = new File(_appDir.nativePath).parent.resolvePath(adlBinFolderName);
        }
    }

    public static function get isADL():Boolean {
        if (_appDir == null) init();
        return _isADL;
    }

    public static function get appDir():File {
        if (_appDir == null) init();
        return _appDir;
    }
}
}
