// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo {
import starling.textures.Texture;
import starling.textures.TextureAtlas;

public class Assets {

    private static var textureAtlas:TextureAtlas;

    [Embed(source="../../sprite-sheet/sprites.png")]
    public static const AtlasTexture:Class;

    [Embed(source="../../sprite-sheet/sprites.xml", mimeType="application/octet-stream")]
    public static const AtlasXml:Class;

    public function Assets() {
    }

    public static function getTexture(textureId:String):Texture {
        if (!textureAtlas) {
            initTextureAtlas();
        }
        return textureAtlas.getTexture(textureId);
    }

    private static function initTextureAtlas():void {
        textureAtlas = new TextureAtlas(Texture.fromBitmap(new AtlasTexture()), new XML(new AtlasXml()));
    }
}
}
