package ;

import haxe.unit.TestCase;

using unicode.tr29.Unicode;
import unicode.tr29.internal.UnicodeRepr;
import unicode.tr29.*;
using Lambda;

class TestAll {
    static function main() {
        /*
        haxe.i18n.Utf32.fromCharCode(0xD800);
var s = new haxe.i18n.Ucs2("☔︎한🌍");    // 3 characters.

trace(s.charAt(0).toNativeString());   //☔ Hmm.. this umbrella looks different
trace(s.charAt(1).toNativeString());   //   Nothing?
trace(s.charAt(2).toNativeString());   //ᄒ ???

trace(s.substr(2,1).toNativeString()); //ᄒ
trace(s.substr(2,2).toNativeString()); //하
trace(s.substr(2,3).toNativeString()); //한

var a = new haxe.i18n.Utf8("한");      // 1 character.
var b = new haxe.i18n.Utf8("한");      // 1 character.
trace(a.charAt(0).toNativeString());  //ᄒ
trace(b.charAt(0).toNativeString());  //한
*/

        var r = new haxe.unit.TestRunner();
        r.add(new NativeTests());
        r.add(new Utf8Tests());
        r.add(new Utf16Tests());
        r.add(new Utf32Tests());
        r.add(new Ucs2Tests());
        //r.add(new BasicTests());
        //r.add(new tr29.GraphemeBreakTests());
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

class NativeTests extends haxe.unit.TestCase {
    function testNative1() {
        var r                = new UnicodeRepr("☔︎한🌍", Native);
        var chars:Characters = r;
        assertEquals(3, chars.length);
    }
    function testNative2() {
        var r                = new UnicodeRepr("☔︎한🌍", Native);
        var chars:Characters = r;

        assertEquals("☔︎", chars.charAt(0).toString());
    } 
    function testNative3() {
        var r                = new UnicodeRepr("☔︎한🌍", Native);
        var chars:Characters = r;

        assertEquals("한", chars.charAt(1).toString());
    } 

    function testNative4() {
        var r                = new UnicodeRepr("☔︎한🌍", Native);
        var chars:Characters = r;

        assertEquals("🌍", chars.charAt(2).toString());
    } 
}

class Utf8Tests extends haxe.unit.TestCase {
    function testNative1() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf8);
        var chars:Characters = r;
        assertEquals(3, chars.length);
    }
    function testNative2() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf8);
        var chars:Characters = r;

        assertEquals("☔︎", chars.charAt(0).toString());
    } 
    function testNative3() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf8);
        var chars:Characters = r;

        assertEquals("한", chars.charAt(1).toString());
    } 

    function testNative4() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf8);
        var chars:Characters = r;

        assertEquals("🌍", chars.charAt(2).toString());
    } 
}

class Utf16Tests extends haxe.unit.TestCase {
    function testNative1() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf16);
        var chars:Characters = r;
        assertEquals(3, chars.length);
    }
    function testNative2() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf16);
        var chars:Characters = r;

        assertEquals("☔︎", chars.charAt(0).toString());
    } 
    function testNative3() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf16);
        var chars:Characters = r;

        assertEquals("한", chars.charAt(1).toString());
    } 

    function testNative4() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf16);
        var chars:Characters = r;

        assertEquals("🌍", chars.charAt(2).toString());
    } 
}

class Utf32Tests extends haxe.unit.TestCase {
    function testNative1() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf32);
        var chars:Characters = r;
        assertEquals(3, chars.length);
    }
    function testNative2() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf32);
        var chars:Characters = r;

        assertEquals("☔︎", chars.charAt(0).toString());
    } 
    function testNative3() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf32);
        var chars:Characters = r;

        assertEquals("한", chars.charAt(1).toString());
    } 

    function testNative4() {
        var r                = new UnicodeRepr("☔︎한🌍", Utf32);
        var chars:Characters = r;

        assertEquals("🌍", chars.charAt(2).toString());
    } 
}

class Ucs2Tests extends haxe.unit.TestCase {
    function testNative1() {
        var r                = new UnicodeRepr("☔︎한🌍", Ucs2);
        var chars:Characters = r;
        assertEquals(3, chars.length);
    }
    function testNative2() {
        var r                = new UnicodeRepr("☔︎한🌍", Ucs2);
        var chars:Characters = r;

        assertEquals("☔︎", chars.charAt(0).toString());
    } 
    function testNative3() {
        var r                = new UnicodeRepr("☔︎한🌍", Ucs2);
        var chars:Characters = r;

        assertEquals("한", chars.charAt(1).toString());
    } 

    function testNative4() {
        var r                = new UnicodeRepr("☔︎한🌍", Ucs2);
        var chars:Characters = r;

        assertEquals("🌍", chars.charAt(2).toString());
    } 
}

/*
class BasicTests extends haxe.unit.TestCase {
    function testScalarSize1() {
        assertEquals(1, '𝌆'.scalars().count());
    }

    function testScalarNoCorrupt() {
        assertEquals("a", '𝌆a'.scalars().array()[1].toString());
    }

    function testCodepoint() {
        assertEquals(0x1D306, '𝌆'.scalars().iterator().next().code);
    }

    function testCharacterSize1() {
        assertEquals(1, '𝌆'.characters().count());
    }

    function testRegionalIndicatorA() {
        assertEquals(0x1F1E6, '🇦'.scalars().iterator().next().code);
    }

    function testHighSurrogateCharacter() {
        assertEquals(0xD800, UnicodeScalar.fromCodePoint(0xD800).code);
    }
}
*/