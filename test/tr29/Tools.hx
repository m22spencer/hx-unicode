package tr29;

using StringTools;
using Lambda;
using unicode.tr29.Unicode;

class Tools {
    public static function genBreaks(scalarsArray:Array<UInt>):String {
        var str = scalarsArray.map(function(s) return s.fromCodePoint()).join('');

        var sv = str.characters().map(function(c) return c.toString())
                    .map(function(c) return c.scalars()
                                             .map(function(s) return StringTools.hex(s.code).lpad('0',4))
                                             .join(' × '))
                    .join(' ÷ ');

        return '÷ $sv ÷';
    }
}