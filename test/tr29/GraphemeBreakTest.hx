package tr29;

using unicode.tr29.Unicode;
using Lambda;
import haxe.unit.TestCase;

class GraphemeBreakTest extends TestCase {
    static var testRegex = ~/^([^#])+?#/;

    public function testGraphemeBreak() {
        var passed = UnicodeTests.runTest( UnicodeTests.read('./spec/tr29/tests/GraphemeBreakTest.txt')
                                         , function(str:String) return str.characters().map(function(c) return c.toString())
                                         , unicode.tr29.internal.GraphemeValues.get);
                                        
        assertTrue(passed);
    }
}