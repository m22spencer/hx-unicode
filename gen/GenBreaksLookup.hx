package gen;

import haxe.extern.EitherType;

import haxe.ds.Vector;
using StringTools;
using Lambda;

class GenBreaksLookup {
    public static function getCodesList() {
        var breakDesc = sys.io.File.getContent('./spec/tr29/properties/GraphemeBreakProperty.txt');

        function all(r:EReg, s:String):Array<Dynamic> {
            var lines = s.replace("\r","").split("\n").map(function(l) return l.trim())
                                                      .filter(function(l) return !(l.startsWith("#") || l == ""));
            var out = [];
            while(lines.length > 0) {
                var line = lines.shift();
                if (r.match(line)) {
                    var i = 1;
                    var m = [];
                    var mlen = r.matchedPos().len;
                    while (true) {
                        try { 
                            var v = r.matched(i++);
                            m.push(v);
                        } catch(e:Dynamic) {
                            break;
                        }
                    }
                    out.push(m);
                } else {
                    throw "A line did not match: " + line;
                }
            }
            return out;
        }
        var both = ~/^([0-9A-F]+)\.\.([0-9A-F]+) +; ([A-Z_a-z]+)|^([0-9A-F]+) +; ([A-Z_a-z]+)/;

        if (!both.match("200D          ; ZWJ")) throw "PANIC";
        if (!both.match("1F481..1F483  ; E_Base # So   [3] INFORMATION DESK PERSON..DANCER")) throw "PANIC 2";

        var codesraw = all(both, breakDesc);


        var codes = [];

        for (c in codesraw) {
            if (c[0] == null) {
                //single code
                var code = Std.parseInt('0x${c[3]}');
                var ctor = c[4];
                codes.push({ code: code, ctor: ctor });
            } else {
                //range
                var min = Std.parseInt('0x${c[0]}');
                var max = Std.parseInt('0x${c[1]}');
                var ctor = c[2];
                for (i in min...(max+1)) {
                    codes.push({code: i, ctor: ctor});
                }
            }
        }

        return codes;
    }

    public static function main() {
        var codes = getCodesList();

        var ser = haxe.Serializer.run(codes);
        var b64 = haxe.crypto.Base64.encode(haxe.zip.Compress.run(haxe.io.Bytes.ofString(ser), 9)).toString();

        var content = 'package unicode.tr29.internal; class GraphemeCodes {\n'
        + '    public static var codes = haxe.Unserializer.run(haxe.zip.Uncompress.run(haxe.crypto.Base64.decode("$b64")).toString()); \n'
        + '}';


        sys.io.File.saveContent('./src/unicode/tr29/internal/GraphemeCodes.hx', content);

    }
}