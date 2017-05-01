package ;

import haxe.unit.TestCase;

using unicode.tr29.Unicode;
import unicode.tr29.*;
using Lambda;

class TestAll {
    static function main() {
        var r = new haxe.unit.TestRunner();
        r.add(new BasicTests());
        r.add(new tr29.GraphemeBreakTest());
        r.run();

        #if sys
        Sys.sleep(.01);
        #end
    }

    macro static function macroMain() {
        main();
        return macro null;
    }
}

class BasicTests extends haxe.unit.TestCase {
    function testScalarSize1() {
        assertEquals(1, '𝌆'.unicodeScalars().count());
    }

    function testCodepoint() {
        assertEquals(0x1D306, '𝌆'.unicodeScalars().iterator().next().codePoint());
    }

    function testCharacterSize1() {
        assertEquals(1, '𝌆'.characters().count());
    }

    function testRegionalIndicatorA() {
        assertEquals(0x1F1E6, '🇦'.unicodeScalars().iterator().next().codePoint());
    }

    function testHighSurrogateCharacter() {
        assertEquals(0xD800, UnicodeScalar.fromCodePoint(0xD800).codePoint());
    }
}