package unicode.tr29;

import unicode.tr29.internal.*;

using Lambda;

/* A single visual character.
   For example: 'a', '単', 's̖̫͉̠̯', '🚲'
*/   
class Character {
    var self:String;
    @:allow(unicode.tr29.Characters)
    inline function new(s:String) self = s;

    /* Get the number of bytes in this grapheme cluster (Visual character) */
    inline public function byteSize():Int {
        return self.length;
    }

    /* Get the number of utf8 codepoints in this grapheme cluster */
    inline public function size():Int {
        return Lambda.count(UnicodeScalars.unicodeScalars(self));
    }

    inline public function toString() {
        return self;
    }

    macro public static function literal(s:String) {
        var len = Characters.characters(s).count();
        if (len != 1)
            haxe.macro.Context.error('Invalid character literal: Expected 1 character, but this is ' + len, haxe.macro.Context.currentPos());

        return macro (untyped $v{s}:unicode.tr29.Character);
    }
}