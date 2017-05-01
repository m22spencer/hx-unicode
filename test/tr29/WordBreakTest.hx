package ;

import unicode.Words;
import unicode.WordValues;

class WordBreakTest {
    static var testRegex = ~/^([^#])+?#/;
    static function main() {
        UnicodeTests.runTest('WordBreakTest.txt'
                            , Words.words
                            , WordValues.get);
    }
}