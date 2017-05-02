package tr29;

using Lambda;
using StringTools;

class GenerateTests {
    macro static function generate() {
        doGenerate();
        return macro null;
    }

    static function parseLineToScalars(line:String) {
        return ~/ +/g.split(~/÷|×/g.replace(line, ''))
                                   .map(StringTools.trim)
                                   .filter(function(s) return s != '')
                                   .map(function(s) {
                                       var i = Std.parseInt('0x$s');
                                       return if (i == null) throw "failed on " + s;
                                       else i;
                                   });
    }

    static function parseBreakTestToLineAndScalars(contents:String):Array<{ line: String, scalars: Array<Int> }> {
        var lines = contents.replace('\r','')
                            .split('\n')
                            .map(function(l) return l.split("#")[0])
                            .map(function(l) return l.trim())
                            .filter(function(l) return l != '');

        return [for (line in lines) 
            { scalars: parseLineToScalars(line), line: line }
        ];
    }

    static function doGenerate() {
        var file = './spec/tr29/tests/GraphemeBreakTest.txt';

        var contents = sys.io.File.getContent(file);

        var lines = contents.replace('\r','')
                            .split('\n')
                            .map(function(l) return l.split("#")[0])
                            .map(function(l) return l.trim())
                            .filter(function(l) return l != '');

        var tests = parseBreakTestToLineAndScalars(contents);

        var source = '';
        function l(str) {
            source += '$str\n';
        }

        l('package tr29;');

        l('class GraphemeBreakTests extends haxe.unit.TestCase {');

        var ct = 0;
        for (test in tests) {
            l('    function test${ct++}() {');
            l('        assertEquals("${test.line}", tr29.Tools.genBreaks(${test.scalars}));');
            l('    }');
        }

        l('}');

        sys.io.File.saveContent('./test/tr29/GraphemeBreakTests.hx', source);
    }
}

              
