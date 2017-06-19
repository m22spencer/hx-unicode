package unicode.tr29.internal;

import unicode.tr29.internal.*;
using Lambda;


typedef Repr = { 
    function length(_:Dynamic):Int;
    function charCodeAt(_:Dynamic, index:Int):Null<Int>; 
    function charAt(_:Dynamic, index:Int):Null<Dynamic>;
    function toString(_:Dynamic):String;
}

@:publicFields
class Helper {
    /*
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
        return Graphemes.characters(str)
            .map(function(r:UnicodeRepr) return r.toString());
    }

    static function unicodeScalars(str:String):Iterable<String> {
        var str:String = untyped str;
        return { iterator: function() {
            var p = 0;
            function advance():String {
                #if (hl||js||cs)
                var size = unicode.tr29.internal.Utf16.codeSizeAt(str, p);
                #else
                var size = unicode.tr29.internal.Utf8.codeSizeAt(str, p);
                #end
                return switch(size) {
                case Some(s): 
                    var chr = str.substr(p, s);
                    p += s;
                    chr;
                case None:
                    p++;
                    '�';
                }
            }
            return { hasNext: function() return p < str.length
                   , next   : advance
                   }
        } }
    }
    */

    static function codeSizeAt(str:String, pos:UInt):UInt {
        #if (hl||js||cs)
        var size = unicode.tr29.internal.Utf16.codeSizeAt(str, pos);
        #else
        var size = unicode.tr29.internal.Utf8.codeSizeAt(str, pos);
        #end
        return switch(size) { case Some(v): v; case None: 1; };
    }

    static function codePointAt(str:String, pos:UInt):UInt {
        #if (hl||js||cs)
        return switch(Utf16.codePointAt(str, pos)) { case Some(p): p; case None: 0xFFFD; }
        #else
        return Utf8.codePointAt(str, pos).codepoint; 
        #end

    }

    static function fromCodePoint(code:UInt):String {
        #if (hl||js||cs)
        return unicode.tr29.internal.Utf16.fromCode(code);
        #else
        return unicode.tr29.internal.Utf8.Utf8Scalar.fromCodepoint(code);
        #end
    }
}