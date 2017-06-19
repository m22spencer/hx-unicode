package unicode.tr29.internal;

import haxe.i18n.*;
import unicode.tr29.internal.Helper;

enum ReprType {
    Native;
    Ucs2;
    Utf8;
    Utf16;
    Utf32;
}

class Marker {
    public var pos(default,null):UInt;
    public var size(default,null):UInt;
    public var code(default,null):UInt;
    inline public function new(pos:UInt, size:UInt, code:UInt) {
        this.pos  = pos;
        this.size = size;
        this.code = code;
    }
}

class UnicodeRepr {
    var v:Dynamic;
    var r:ReprType;
    public function new(str:String, rt:ReprType) {
        this.r = rt;
        if (str == null) return;
        this.v = switch(rt) {
        case Native: str;
        case Ucs2  : new haxe.i18n.Ucs2(str);
        case Utf8  : new haxe.i18n.Utf8(str);
        case Utf16 : new haxe.i18n.Utf16(str);
        case Utf32 : new haxe.i18n.Utf32(str);
        }
    }

    public function toString():String {
        return switch(r) {
        case Native: v;
        case Ucs2  : (v:Ucs2).toNativeString();
        case Utf8  : (v:Utf8).toNativeString();
        case Utf16 : (v:Utf16).toNativeString();
        case Utf32 : (v:Utf32).toNativeString();
        }
    }

    public function add(b:UnicodeRepr) {
        var ur = new UnicodeRepr(null,r);
        ur.v = switch(r) {
        case Native: (v:String) + (b.v:String);
        case Ucs2  : (v:Ucs2)   + (b.v:Ucs2);
        case Utf8  : (v:Utf8)   + (b.v:Utf8);
        case Utf16 : (v:Utf16)  + (b.v:Utf16);
        case Utf32 : (v:Utf32)  + (b.v:Utf32);
        }
        return ur;
    }

    public function cut(pos:UInt, length:UInt) {
        var ur = new UnicodeRepr(null,r);
        ur.v = switch(r) {
        case Native: (v:String).substr(pos, length);
        case Ucs2  : (v:Ucs2).substr(pos, length);
        case Utf8  : (v:Utf8).substr(pos, length);
        case Utf16 : (v:Utf16).substr(pos, length);
        case Utf32 : (v:Utf32).substr(pos, length);
        }

        return ur;
    }

    public function length():Int {
        return switch(r) {
        case Native: v.length;
        case Ucs2  : (v:Ucs2).length;
        case Utf8  : (v:Utf8).length;
        case Utf16 : (v:Utf16).length;
        case Utf32 : (v:Utf32).length;
        }
    }

    public function getMarkers():Iterable<Marker> {
        var p = 0;
        function hasNext():Bool {
            return p < length();
        }
        function next():Marker {
            return switch(r) {
            case Native:     
                var code = Helper.codePointAt(v, p);
                var size = Helper.codeSizeAt(v, p);
                var m = new Marker(p, size, code);
                p += size;
                m;
            case Utf8:
                var v8:Utf8 = v;
                var code = v8.charCodeAt(p);
                var size = 1;
                var m    = new Marker(p, size, code);
                p += size;
                m;
            case Utf16:
                var v16:Utf16 = v;
                var code = v16.charCodeAt(p);
                var size = 1;
                var m    = new Marker(p, size, code);
                p += size;
                m;
            case Utf32:
                var v32:Utf32 = v;
                var code = v32.charCodeAt(p);
                var size = 1;
                var m    = new Marker(p, size, code);
                p += size;
                m;
            case Ucs2:
                var us2:Ucs2 = v;
                var code = us2.charCodeAt(p);
                var size = 1;
                if (code > 0xD800 && code <= 0xDFFF) {
                    //surrogate
                    if (p + 1 < us2.length) {
                        size += 1;
                        var hs = code;
                        var ls = us2.charCodeAt(p+1);
                        if (ls >= 0xD800 && ls <= 0xDFFF) {
                            var hv = hs - 0xD800;
                            var lv = ls - 0xDC00;
                            var t = (hv << 10) | lv;
                            code = t + 0x10000;
                        }
                    }
                     
                }
                var m    = new Marker(p, size, code);
                p += size;
                m;
            } 
        }

        return { iterator: function() 
            return { next: next, hasNext: hasNext }};
    }
}