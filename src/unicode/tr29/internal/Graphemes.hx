package unicode.tr29.internal;

import unicode.tr29.internal.GraphemeValues;
import unicode.tr29.internal.Helper;
import unicode.tr29.internal.UnicodeRepr;

class Graphemes {
    public static function characters(s:UnicodeRepr):Iterable<UnicodeRepr> {
        var it = s.getMarkers().iterator();

        var cache = null;
        function next(peek:Bool):Marker {
            return if (peek == true) {
                if (cache == null) cache = it.next();
                else cache;
            } else {
                if (cache == null) it.next();
                else {
                    var t = cache;
                    cache = null;
                    t;
                }
            }
        }

        function hasNext() {
            return cache != null || it.hasNext();
        }

        var pos   = 0;
        var cache = null;
        function advance() {
            riCt = 0;
            gb10 = false;
            
            var cur = next(false);


            function val(chr:Marker) { 
                return GraphemeValues.get(chr.code);
            }

            while(hasNext()) {
                var curT = val(cur);
                var nchar = next(true);
                var nxtT = val(next(true));
                //trace('$cur:$curT  ---  $nchar:$nxtT');
                if (needsBreak(val(cur), val(next(true)))) {
                    break;
                } else {
                    cur = next(false);
                }
            }

            var end = (cur.pos + cur.size);
            var len = end - pos;
            var ss = s.cut(pos, len);
            pos += len;

            return ss;
        }

        return { iterator: function() 
            return { hasNext: hasNext
                   , next   : advance
                   }
        };
    }

    /*
    public static function substrChars(s:String, pos:Int, len:Int) {
        return takeChars(dropChars(s, pos), len);
    }

    public static function dropChars(s:String, n:Int):String {
        var blen = 0;
        var it = characters(s).iterator();
        var i = 0;
        while(it.hasNext() && i++ < n ) {
            var n = it.next();
            blen += n.length;
        }
        return s.substr(blen);
    }

    public static function takeChars(s:String, n:Int):String {
        var blen = 0;
        var it = characters(s).iterator();
        var i = 0;
        while(it.hasNext() && i++ < n ) {
            var n = it.next();
            blen += n.length;
        }
        return s.substr(0, blen);
    }
    */

    public static var riCt = 0;
    public static var extend = false;
    public static var gb10   = false;
    public static function needsBreak(prev:GraphemeValuesEnum,next:GraphemeValuesEnum) {
        if (prev != Regional_Indicator)
            riCt = 0;
        return switch([prev,next]) {
        case [CR, LF]            : false;  //GB3
        case [Control|CR|LF, _]
           | [_, Control|CR|LF]: true;   //GB4/5
        case [L, L|V|LV|LVT]: false; //GB6
        case [LV, V|T]: false;       //GB7
        case [V, V|T]: false;       //GB7  (Not merged with above line due to: https://github.com/HaxeFoundation/haxe/issues/5873)
        case [LVT|T, T]: false;          //GB8
        case [E_Base|E_Base_GAZ, Extend]:
            gb10 = true;  //GB10  (Todo: optimize)
            false;
        case [_, Extend]: 
            false;             //GB9
        case [_, ZWJ]: 
            false;             //GB9
        case [_, SpacingMark]: false;        //GB9a
        case [Prepend, _]: false;            //GB9b
        case [_, E_Modifier] if (gb10):
            gb10 = false;   //GB10  (Todo: optimize)
            false;
        case [E_Base_GAZ | E_Base, E_Modifier]:
            gb10 = false;   //GB10  (Todo: optimize)
            false;
        case [ZWJ, Glue_After_Zwj | E_Base_GAZ]:  //GB11
            false;
        case [Regional_Indicator, Regional_Indicator]:   //GB8a
            riCt ++;
            if (riCt % 2 == 0) true;
            else false;
        case _: true;
        }
    }
}