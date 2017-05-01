package ;

import unicode.Sentences;
import unicode.SentenceValues;

class SentenceBreakTest {
    static var testRegex = ~/^([^#])+?#/;
    static function main() {
        UnicodeTests.runTest('sentenceBreakTest.txt'
                            , Sentences.sentences
                            , SentenceValues.get);
    }
}