package unicode.tr29;

import unicode.tr29.internal.*;

using Lambda;

/* A representation of visual characters in a string.
*/
class Characters {
    var self:String;
    inline function new(str:String) self = str;

    /* Get the `nth` utf8 grapheme cluster (visual character) in this string */
    public function charAt(position:Int):Character {
        var i = 0;
        var it = byteIterator();
        var s = 0;
        for(b in it) {
            if (i >= position) break;
            s = b;
            i++;
        }
        return if(it.hasNext()) new Character(self.substr(s, it.next() - s));
        else new Character(self.substr(s));
    }

    /** Take a subsection of this utf8 string, starting with grapheme cluster `start`, and ending at `start+len` utf8 grapheme cluster.
        If len is negative, `start` to end of string will be taken.
    **/
    public function substr(start:Int, len:Int = -1):Characters {
        return characters(this.array().slice(start, len < 0 ? null : (start + len)).join(""));
    }

    public function iterator():Iterator<Character> {
        return Lambda.map(Graphemes.characters(self), function(c) return new Character(c)).iterator();
    }

    /** An iterator which gives the byte position of each utf8 Grapheme cluster (Visual character) in this string. **/
    public function byteIterator():Iterator<Int> {
        var buf = '';
        return [for (chr in iterator()) {
            var p = buf.length;
            buf += chr;
            p;
        }].iterator();
    }

    inline public function toString():String {
        return self;
    }
    
    /** Interpret `str` as a list of utf8 Grapheme clusters (Visual characters). **/
    inline public static function characters(str:String):Characters {
        return new Characters(str);
    }
}

