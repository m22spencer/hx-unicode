```haxe
using unicode.tr29.Unicode;
import unicode.tr29.*;

using Lambda;

class Main {
    static function main() {

        var str = 'T̵̪̰e̝͠s̖̫͉̠̯t̞̩̙';

        //Visual characters
        trace(str.characters().join('-'));                    //'T̵̪̰-e̝͠-s̖̫͉̠̯-t̞̩̙'
        trace(str.characters().count());                      // 4 

        trace(str.characters().substr(1, 2));                 // 'e̝͠s̖̫͉̠̯'


        //Unicode scalars
        trace(str.unicodeScalars().array().join('-'));        //'T-̵-̪-̰-e-͠-̝-s-̖-̫-͉-̠-̯-t-̞-̩-̙'
        trace(str.unicodeScalars().count());                  // 17 

        trace(str.unicodeScalars().substr(1, 2));             // '̵̪'

        
        // Ascii (haxe default)
        var ascii = [for (i in 0...str.length)
                         str.charAt(i)];
        trace(ascii.join('-'));                               // 'T-------e-----s-----------t------'
        trace(ascii.count());                                 // 30
        trace(str.substr(1,2));                               // '̵'
 

        #if neko
        Sys.sleep(.01);
        #end
    }
}
```