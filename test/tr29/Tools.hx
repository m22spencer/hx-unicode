package tr29;

using StringTools;
using Lambda;
using unicode.tr29.Unicode;
import unicode.tr29.*;

class Tools {
    public static function genBreaks(scalars:Array<UInt>):String {
        var str = scalars.map(function(s) return s.fromCodePoint()).join('');

        var sv = str.characters().map(function(c) return c.toString())
                    .map(function(c) return c.unicodeScalars()
                                             .map(function(s) return StringTools.hex(s.codePoint()).lpad('0',4))
                                             .join(' × '))
                    .join(' ÷ ');

        return '÷ $sv ÷';
    }
}