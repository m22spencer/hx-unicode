package unicode.tr29;

import unicode.tr29.internal.*;
using Lambda;


/* A single utf8 codePoint.
*/
class UnicodeScalar {
    var self:String;
    @:allow(unicode.tr29.UnicodeScalars)
    inline function new(s:String) self = s;

    /** Get the number of bytes in this scalar **/
    inline public function byteSize():Int {
        #if hl
        return self.length * 2;
        #else
        return Utf8.codepointAt(self, 0).bytesConsumed;
        #end
    }

    /* Get the integer value of this scalar */
    inline public function codePoint():UInt {
        #if (hl||js||cs)
        var cc = self.charCodeAt(0);
        return if (cc > 0xD800 && cc <= 0xDFFF) {
            //surrogate
            var hs = cc;
            var ls = self.charCodeAt(1);


            var hv = hs - 0xD800;
            var lv = ls - 0xDC00;

            var t = (hv << 10) | lv;

            t + 0x10000; 
        }
        else 
            cc;
        #else
        return Utf8.codepointAt(self, 0).codepoint; 
        #end
    }

    inline public function toString():String {
        return self;
    }

    inline static public function fromCodePoint(codePoint:Int):UnicodeScalar {
        #if (hl||js||cs)
        return new UnicodeScalar(unicode.tr29.internal.Utf16.fromCode(codePoint));
        #else
        return new UnicodeScalar(unicode.tr29.internal.Utf8.Utf8Scalar.fromCodepoint(codePoint));
        #end
    }
}