package ;

using Lambda;
using unicode.tr29.Unicode;
import unicode.tr29.*;
using StringTools;

class UnicodeTests {
    macro public static function read(file:String) {
        return macro $v{sys.io.File.getContent(file)};
    }
    public static function runTest<T>( contents: String
                                     , iter: String->Iterable<String>
                                     , get : Int -> T
                                     ):Bool {
        var lines = contents
                               .replace('\r', '')
                               .split('\n')
                               .map(function(l) return l.split("#")[0])
                               .map(function(l) return l.trim())
                               .filter(function(l) return l != '');

        var failed = 0;

        for (line in lines) {
            var codepoints = ~/ +/g.split(~/÷|×/g.replace(line, ''))
                                  .map(StringTools.trim)
                                  .filter(function(s) return s != '')
                                  .map(function(s) {
                                      var i = Std.parseInt('0x$s');
                                      return if (i == null) throw "failed on " + s;
                                      else i;
                                  });

            var str = codepoints.map(UnicodeScalar.fromCodePoint).join('');


            var sv = iter(str)
               .map(function(c) return c.unicodeScalars()
                                        .map(function(s) return StringTools.hex(s.codePoint()).lpad('0', 4))
                                        .join(' × '))
               .join(' ÷ ');
            
            var sv = '÷ $sv ÷';

            var sv2 = iter(str)
               .map(function(c) return c.unicodeScalars()
                                        .map(function(s) return get(s.codePoint()))
                                        .join(' × '))
               .join(' ÷ ');
            
            var sv2 = '÷ $sv2 ÷';

            if (line != sv) {
                failed ++;
                trace('failed : ' + line);
                trace('with   : ' + sv + '\n');
                trace('with2  : ' + sv2 + '\n');
            }
        }

        return failed == 0;
    }
}