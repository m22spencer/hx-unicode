package unicode.tr29.internal;

import haxe.ds.Option;

#if !(hl||js||cs)
#error "Unsupported platform"
#end

class Utf16 {
    public static function codeAt(string:String, index:Int):Option<UInt> {
        if (index >= string.length)
            return None;
        var cc = string.charCodeAt(index);
        if (cc > 0xD800 && cc <= 0xDFFF) {
            //surrogate
            if (index+1 >= string.length)
                return None;

            var hs = cc;
            var ls = string.charCodeAt(index+1);

            if (ls >= 0xD800 && cc <= 0xDFFF) {
                var hv = hs - 0xD800;
                var lv = ls - 0xDC00;
                var t = (hv << 10) | lv;
                return Some((t + 0x10000:UInt));
            } else {
                //Invalid
                return None;
            }
        } else {
            return Some((string.charCodeAt(0):UInt));
        }
    }

    public static function codeSizeAt(string:String, index:Int):Option<UInt> {
        if (index >= string.length)
            return None;
        var cc = string.charCodeAt(index);
        if (cc > 0xD800 && cc <= 0xDFFF) {
            //surrogate
            if (index+1 >= string.length)
                return None;

            var hs = cc;
            var ls = string.charCodeAt(index+1);

            if (ls >= 0xD800 && cc <= 0xDFFF) {
                return Some((2:UInt));
            } else {
                //Invalid
                return None;
            }
        } else {
            return Some((1:UInt));
        }
    }

    public static function fromCode(code:UInt):String {
        #if (js||hl||cs)
        return if (code >= 0x10000) {
            //surrogate pair
            var t = code - 0x10000;
            var hv = (t >>> 10) & 0x3FF;
            var lv = t & 0x3FF;

            var hs = hv + 0xD800;
            var ls = lv + 0xDC00;

            #if hl
            var b = new hl.Bytes(6);
            b.setUI16(0, hs);
            b.setUI16(2, ls);
            b.setUI16(4, 0);
            untyped String.__alloc__(b, 2);
            #else
            String.fromCharCode(hs) + String.fromCharCode(ls);
            #end
        } else {
            #if hl
            var b = new hl.Bytes(4);
            b.setUI16(0, code);
            b.setUI16(2, 0);
            untyped String.__alloc__(b, 1);
            #else
            String.fromCharCode(code);
            #end
        }
        #end
    }
}