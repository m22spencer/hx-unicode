package unicode.tr29;

import unicode.tr29.internal.*;
using Lambda;

/* A representation of utf8 codepoints in a string.
   Invalid utf8 codepoints will become '�'
*/
class UnicodeScalars {
    var self:String;
    inline function new(str:String) self = str;

    public function utf8ByteSize() {
        #if (neko||cpp)
        return self.length;
        #elseif (js||cs||hl)
        var bytes = 0;
        for (scl in iterator())
            bytes += scl.byteSize();
        return bytes;
        #end
    }

    /* Get the `nth` utf8 scalar in this string */
    public function charAt(nth:Int):UnicodeScalar {
        var i = 0;
        var it = byteIterator();
        var s = 0;
        for(b in it) {
            if (i >= nth) break;
            s = b;
            i++;
        }
        return if(it.hasNext()) new UnicodeScalar(self.substr(s, it.next() - s));   //FIXME: Add error handling '�'
        else new UnicodeScalar(self.substr(s));
    }

    /** Take a subsection of this utf8 string, starting from utf8 codePoint `start`, and ending at `start+len` utf8 codePoints.
        If len is negative, `start` to end of string will be taken.
    **/
    public function substr(start:Int, len:Int = -1):UnicodeScalars {
        return unicodeScalars(this.array().slice(start, len < 0 ? null : (start + len)).join(""));
    }

    public function iterator():Iterator<UnicodeScalar> {
        var p = 0;
        function advance():UnicodeScalar {
            #if (hl||js||cs)
            var size = unicode.tr29.internal.Utf16.codeSizeAt(self, p);
            #else
            var size = unicode.tr29.internal.Utf8.codeSizeAt(self, p);
            #end
            return switch(size) {
            case Some(s): 
                var chr = self.substr(p, s);
                p += s;
                new UnicodeScalar(chr);
            case None:
                p++;
                new UnicodeScalar('�');
            }
        }
        return { hasNext: function() return p < self.length
               , next   : advance
               }
    }

    /** An iterator which gives the byte position of each utf8 codePoint in this utf8 string. **/
    public function byteIterator():Iterator<Int> {
        var p = 0; 
        return { next: function() { var pcur = p; p += Utf8.codepointSizeAt(self, p); return pcur; }
               , hasNext: function() return p < self.length
               };
    }

    inline public function toString():String {
        return this.self;
    }

    /** Interpret `str` as a list of utf8 codePoints. **/
    inline public static function unicodeScalars(str:String):UnicodeScalars {
        return new UnicodeScalars(str);
    }
}

