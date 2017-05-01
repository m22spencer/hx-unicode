package unicode.tr29.internal;

import haxe.ds.Option;
using Lambda;

class Utf8 {
    inline public static function unicodeScalarBytes(s:String):Iterable<Int> {
        return { iterator: function () { var p = 0; 
                                         return { next: function() { var pcur = p; p += Utf8.codepointSizeAt(s, p); return pcur; }
                                                , hasNext: function() return p < s.length
                                                }}};
    }

    public static function unicodeScalars(s:String):Iterable<Utf8Scalar> {
        return { iterator: function() {
            var p = 0;
            function advance():Utf8Scalar {
                var r = codepointAt(s, p);
                return if (r.codepoint == 0xFFFD) {
                    p += 1;
                    untyped '�';
                }
                else {
                    var chr = s.substr(p, r.bytesConsumed);
                    p += r.bytesConsumed;
                    untyped chr;
                }
            }
            return { hasNext: function() return p < s.length
                   , next   : advance
                   }
        }
        };
    }

    public static function validate(s:String):Bool {
        var p = 0;
        while(p < s.length) {
            var r = codepointAt(s, p);
            if (r.codepoint == 0xFFFD)
                return false;
            p += r.bytesConsumed;
        }
        return true;
    }

    public static function substrUtf8(s:String, pos:Int, len:Int) {
        return takeUtf8(dropUtf8(s, pos), len);
    }

    public static function dropUtf8(s:String, n:Int):String {
        var i = 0;
        for (u in unicodeScalarBytes(s)) {
            if(i >= n) return s.substr(u);
            i++;
        }
        return '';
    }

    public static function takeUtf8(s:String, n:Int):String {
        var i = 0;
        for (u in unicodeScalarBytes(s)) {
            if(i >= n) return s.substr(0, u);
            i++;
        }
        return '';
    }

    public static function mapUtf8(s:String, f:Utf8Scalar->Utf8Scalar) {
        return flatMapUtf8(s, f);
    }

    public static function flatMapUtf8(s:String, f:Utf8Scalar->String) {
        var strbuf = new StringBuf();
        for (c in unicodeScalars(s))
            strbuf.add(f(c));
        return strbuf.toString();
    }

    /** Return the `i`th Utf8Scalar in the string `s`.
        This function is O(n).
        **/
    public static function nth(s:String, i:Int) {
        return unicodeScalars(s).array()[i];
    }

    /** Reads a utf8 codepoint from byte position `byte` of `str`
        If an invalid utf8 character is encountered, this function will return
          `�` (U+FFFD) with a `bytesConsumed` of `1`.
    **/
    public static function codepointAt(str:String, byte:Int):{ codepoint: Int, bytesConsumed: Int } {
        return switch(maybeCodepointAt(str, byte)) {
        case Some(codepoint): { codepoint: codepoint, bytesConsumed: sizeOfCodepoint(codepoint) };
        case None           : { codepoint: 0xFFFD   , bytesConsumed: 1 };
        }
    }

    public static function codepointSizeAt(str:String, byte:Int) {
        var code = str.charCodeAt(byte);
        return if((code & 0xE0 == 0xC0) && (str.charCodeAt(byte+1) & 0xC0 == 0x80)) 2;
        else   if((code & 0xF0 == 0xE0) && (str.charCodeAt(byte+1) & 0xC0 == 0x80)
                                        && (str.charCodeAt(byte+2) & 0xC0 == 0x80)) 3;
        else   if((code & 0xF8 == 0xF0) && (str.charCodeAt(byte+1) & 0xC0 == 0x80)
                                        && (str.charCodeAt(byte+2) & 0xC0 == 0x80)
                                        && (str.charCodeAt(byte+3) & 0xC0 == 0x80)) 4;
        else 1;  //Error, or regular byte
    }

    public static function codeSizeAt(str:String, byte:Int) {
        var code = str.charCodeAt(byte);
        return if((code & 0xE0 == 0xC0) && (str.charCodeAt(byte+1) & 0xC0 == 0x80)) Some(2);
        else   if((code & 0xF0 == 0xE0) && (str.charCodeAt(byte+1) & 0xC0 == 0x80)
                                        && (str.charCodeAt(byte+2) & 0xC0 == 0x80)) Some(3);
        else   if((code & 0xF8 == 0xF0) && (str.charCodeAt(byte+1) & 0xC0 == 0x80)
                                        && (str.charCodeAt(byte+2) & 0xC0 == 0x80)
                                        && (str.charCodeAt(byte+3) & 0xC0 == 0x80)) Some(4);
        else   if(code <= 127) Some(1);
        else None;
    }

    /** Reads a utf8 codepoint from byte position `byte` of `str`
        If an invalid utf8 character is encountered, this function returns `None`.
    **/
    public static function maybeCodepointAt(str:String, byte:Int):Option<Int> {
        var code = str.charCodeAt(byte++);
        var f = code;
        var numContBytes = 0;
        while(f & 0x80 > 0) {
            numContBytes++;
            f <<= 1;
        }

        if (numContBytes == 1) return None;  //Continuation byte expected at utf8 position;
        var tbytes = numContBytes;
        numContBytes--;
        numContBytes = numContBytes < 0 ? 0 : numContBytes;

        var mask = 0xFF >>> (numContBytes+1);
        code = (mask & code);

        function contByte() {
            var cb = str.charCodeAt(byte++);
            if (!utf8_c(cb)) throw "Invalid utf8 continuation byte";
            return cb & 0x3F;
        }

        try { 
            while(numContBytes > 0) {
                code = (code << 6) | (contByte());
                numContBytes--;
            }
            var bcon = tbytes < 1 ? 1 : tbytes;
            return Some(code);
        } catch (e:Dynamic) {
            return None;
        }
    }

    public static function sizeOfCodepoint(codepoint:Int) {
        return if (codepoint < 0x0800) {
            if (codepoint <= 0x7F) 1;
            else 2;
        } else {
            if (codepoint <= 0x10000) 3;
            else 4;
        }
    }
    static function utf8_c(n:Int):Bool return (n >>> 6) == 2;
}

abstract Utf8Scalar(String) to String {
    public function codepoint() {
        return Utf8.codepointAt(this, 0).codepoint;
    }

    public function bytes() {
        return this.length;
    }

    public static function fromCodepoint(p:Int) {
        var size = Utf8.sizeOfCodepoint(p);
        if (size == 1) return String.fromCharCode(p);

        var o = '';
        var hdr = 0x80;
        for(i in 1...size) {
            o = String.fromCharCode(0x80 | (p & 0x3F)) + o;
            p >>>= 6;
            hdr = (hdr >>> 1) | 0x80;
        }

        o = String.fromCharCode(hdr | p) + o;
        return o;
    }
}

class Utf8Iterable {
    var s:String;
    public function new(s:String) {
        this.s = s;
    }
    public function iterator() {
        return new Utf8ByteIterator(s);
    }
}

class Utf8ByteIterator {
    var p:Int;
    var s:String;
    public function new (s:String) {
        this.s = s;
        this.p = 0;
    }

    public function next() {
        var pcur = p; 
        p += Utf8.codepointSizeAt(s, p); 
        return pcur;
    }

    public function hasNext() {
        return p < s.length;
    }
}