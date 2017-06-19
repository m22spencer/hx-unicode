package unicode.tr29.internal;

import unicode.tr29.internal.*;
using Lambda;

@:publicFields
class Helper {
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