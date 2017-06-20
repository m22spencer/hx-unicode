package unicode.tr29.internal;

import unicode.tr29.internal.*;
using Lambda;

@:publicFields
class Helper {
    static function unicodeCharacterCount(str:String):UInt {
        return unicodeCharacters(str).count();
    }

    static function unicodeScalarCount(str:String):UInt {
        return unicodeScalars(str).count();
    }

    static function unicodeCharacterSubstr(str:String, pos:Int, ?len:Int):String {
        var chars = unicodeCharacters(str).array();

        if (len == null) len = chars.length;
        if (pos < 0) pos = chars.length + pos;

        return chars.slice(pos, pos + len).join('');
    }

    static function unicodeCharacterAt(str:String, pos:Int) {
        var chars = unicodeCharacters(str).array();
        return if (pos >= 0 && pos < chars.length) chars[pos] else "�";
    }

    static function unicodeScalarSubstr(str:String):String {
        throw "NYI";
    }

    static function unicodeCharacters(str:String):Iterable<String> {
        return Graphemes.characters(str);
    }

    static function unicodeScalars(str:String):Iterable<String> {
        return [for(p in codepoints(str)) 
                    Helper.fromCodePoint(p.code)];
    }

    static function codePointAt(str:String, pos:UInt):UInt {
        #if (python)
        return python.internal.UBuiltins.ord(str.substr(pos));
        #elseif (hl||js||cs||java)
        return switch(Utf16.codePointAt(str, pos)) { case Some(p): p; case None: 0xFFFD; }
        #else
        return Utf8.codePointAt(str, pos).codepoint; 
        #end
    }

    static function codePointSizeAt(str:String, pos:UInt):UInt {
        #if (python)
        return 1;  
        #elseif (hl||js||cs||java)
        return Utf16.codepointSizeAt(str, pos);
        #else
        return Utf8.codepointSizeAt(str, pos);
        #end 
    }

    static function fromCodePoint(code:UInt):String {
        #if (python)
        return String.fromCharCode(code);
        #elseif (hl||js||cs||java)
        return unicode.tr29.internal.Utf16.fromCode(code);
        #else
        return unicode.tr29.internal.Utf8.Utf8Scalar.fromCodepoint(code);
        #end
    }

    static function codepoints(str:String):Iterator<{code:UInt, size:UInt}> {
        var pos = 0;
        var len = str.length;
        function hasNext() {
            return pos < len; 
        }

        function next() {
            var code = codePointAt(str, pos);
            var size = codePointSizeAt(str, pos);
            pos += size;
            return {code: code, size: size};
        }

        return { next: next, hasNext: hasNext };
    }
}

class Slice {
    inline public function new(str:String, start:UInt, len:UInt) {

    }
}