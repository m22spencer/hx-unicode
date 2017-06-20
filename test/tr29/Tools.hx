package tr29;

using StringTools;
using Lambda;
using unicode.tr29.Unicode;
import unicode.tr29.internal.Graphemes;
import unicode.tr29.internal.GraphemeValues;

class Tools {
    public static function genBreaks(scalarsArray:Array<UInt>):String {
        var breaker = new GraphemeBreaker();
        var s = null;
        var l = breaker.get(s = scalarsArray.shift());
        var breakS = ' ÷ ';
        var joinS  = ' × ';
        var res = StringTools.hex(s).lpad('0', 4);
        for (s in scalarsArray) {
            var gv = breaker.get(s);
            var needsBreak = breaker.needsBreak(l, gv);
            l = gv;
            res += (needsBreak ? breakS : joinS) + StringTools.hex(s).lpad('0',4);
        }

        return '÷ $res ÷';
    }
}