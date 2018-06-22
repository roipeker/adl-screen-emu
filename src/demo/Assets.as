// =================================================================================================
//
//	Created by Rodrigo Lopez [roipeker™] on 22/06/2018.
//
// =================================================================================================

package demo {
import starling.display.Image;
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


/*
private static var textures:Dictionary = new Dictionary();
private static var textureAtlas:TextureAtlas;

[Embed(source="../sprite-sheet/atlas.png")]
public static const AtlasTexture:Class;

[Embed(source="../sprite-sheet/atlas.xml", mimeType="application/octet-stream")]
public static const AtlasXml:Class;

public static function getAtlas():TextureAtlas {
    if (textureAtlas == null) {
        var texture:Texture = getTexture("AtlasTexture");
        var xml:XML = XML(new AtlasXml());
        textureAtlas = new TextureAtlas(texture, xml);
    }
    return textureAtlas;
}

public static function getTexture(name:String, mm:Boolean = false):Texture {
    if (textures[name] == undefined) {
        var bitmap:Bitmap = new Assets[name]();
        textures[name] = Texture.fromBitmap(bitmap, mm);
    }
    return textures[name];
}*/
