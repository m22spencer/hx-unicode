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


        var g  = 0;
        var ct = 0;

        while(tests.length > 0) {
            var t = tests.slice(0, 100);
            tests = tests.slice(100);

            l('class GraphemeBreakTests${g++} extends haxe.unit.TestCase {');
     
            for (test in t) {
                l('    function test${ct++}() {');
                l('        assertEquals("${test.line}", tr29.Tools.genBreaks(${test.scalars}));');
                l('    }');
            }
     
            l('}');
        }

        l('class GraphemeBreakTests {');
        l('    public static function addTests(r:haxe.unit.TestRunner) {');
        for (i in 0...g) {
            l('        r.add(new GraphemeBreakTests$i());') ;
        }
        l('    }');
        l('}');

        sys.io.File.saveContent('./test/tr29/GraphemeBreakTests.hx', source);
    }
}

              
