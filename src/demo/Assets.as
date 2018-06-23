// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo {

import starling.display.DisplayObjectContainer;
import starling.display.Image;
import starling.text.BitmapFont;
import starling.text.TextField;
import starling.text.TextFieldAutoSize;
import starling.text.TextFormat;
import starling.textures.Texture;
import starling.textures.TextureAtlas;
import starling.utils.Align;

public class Assets {

    [Embed(source="assets/sprites.png")]
    private static const AtlasTexture:Class;

    [Embed(source="assets/sprites.xml", mimeType="application/octet-stream")]
    private static const AtlasXml:Class;

    [Embed(source="assets/RobotoBold.fnt", mimeType="application/octet-stream")]
    private static const RobotoBoldXml:Class;

    [Embed(source="assets/RobotoRegular.fnt", mimeType="application/octet-stream")]
    private static const RobotoRegularXml:Class;

    [Embed(source="assets/RobotoMedium.fnt", mimeType="application/octet-stream")]
    private static const RobotoMediumXml:Class;


    public static const BOLD:String = "RobotoBold";
    public static const MEDIUM:String = "RobotoMedium";
    public static const REGULAR:String = "RobotoRegular";

    public function Assets() {
    }

    private static var _atlas:TextureAtlas;

    public static function init():void {
        if (!_atlas) {
            _atlas = new TextureAtlas(Texture.fromBitmap(new AtlasTexture(), false, false, 1), new XML(new AtlasXml()));
            TextField.registerBitmapFont(new BitmapFont(getTexture("RobotoBold"), new XML(new RobotoBoldXml())), BOLD);
            TextField.registerBitmapFont(new BitmapFont(getTexture("RobotoMedium"), new XML(new RobotoMediumXml())), MEDIUM);
            TextField.registerBitmapFont(new BitmapFont(getTexture("RobotoRegular"), new XML(new RobotoRegularXml())), REGULAR);
        }
    }

    public static function getImage(doc:DisplayObjectContainer, textureId:String):Image {
        var img:Image = new Image(getTexture(textureId));
        if (doc) {
            doc.addChild(img);
        }
        return img;
    }

    public static function getText(doc:DisplayObjectContainer = null, fontFace:String = null,
                                   size:Number = 25, color:uint = 0x4d4d4f,
                                   text:String = null,
                                   w:Number = -1, h:Number = -1,
                                   align:String = "left", leading:Number = 0, letterSpacing:Number = 0,
                                   debugSize:Boolean = false):TextField {

        var autoSize:String = "none";
        if (!fontFace) {
            fontFace = REGULAR;
        }
        if (w < 0 && h < 0) {
            autoSize = TextFieldAutoSize.BOTH_DIRECTIONS;
            w = 0;
            h = 0;
        }
        if (w < 0) {
            autoSize = TextFieldAutoSize.HORIZONTAL;
            w = 0;
        }
        if (h < 0) {
            autoSize = TextFieldAutoSize.VERTICAL;
            h = 0;
        }

        var format:TextFormat = new TextFormat(fontFace, size, color);
        format.kerning = true;
        format.leading = leading;
        format.letterSpacing = letterSpacing;
        format.horizontalAlign = align;
        format.verticalAlign = Align.TOP;

        var tf:TextField = new TextField(w, h, text, format);
        tf.isHtmlText = false;
        tf.autoSize = autoSize;
        tf.touchable = false;
        if (debugSize) {
            tf.border = true;
        }
        if (text && text.length < 30) {
            tf.batchable = true;
        }
        if (doc) {
            doc.addChild(tf);
        }
        return tf;
    }

    public static function getTexture(name:String):Texture {
        return _atlas.getTexture(name);
    }

}
}
