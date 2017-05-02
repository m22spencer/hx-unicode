using unicode.Unicode;

using Lambda;

class Main {
    static function main() {

        var str = 'T̵̪̰e̝͠s̖̫͉̠̯t̞̩̙';

        //Visual characters
        var chars:Characters = str.characters();
        trace(chars.array().join('-'));               //'T̵̪̰-e̝͠-s̖̫͉̠̯-t̞̩̙'
        trace(chars.length);                          // 4 

        trace(chars.substr(1, 2));                    //'e̝͠s̖̫͉̠̯'


        //Unicode scalars
        var scalars:UnicodeScalars = str.scalars();
        trace(scalars.array().join('-'));             //'T-̵-̪-̰-e-͠-̝-s-̖-̫-͉-̠-̯-t-̞-̩-̙'
        trace(scalars.length);                        // 17 

        
        // Ascii (haxe default)
        var ascii = [for (i in 0...str.length)
                         str.charAt(i)];
        trace(ascii.join('-'));                       // 'T-------e-----s-----------t------'
        trace(ascii.length);                          // 30
        trace(str.substr(1,2));                       // '̵'
 
        #if neko
        Sys.sleep(.01);
        #end
    }
}