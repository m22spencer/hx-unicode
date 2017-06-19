package unicode.tr29;

import unicode.tr29.internal.Helper;
import unicode.tr29.internal.UnicodeRepr;
using Lambda;

/**

	Represents sequences of Visual Characters.


	Characters are immutable, it is not possible to modify individual

	characters. No method of this class changes the state of `this` String.


	Characters can be concatenated by using the `+` operator.
**/
abstract Characters(UnicodeRepr) from UnicodeRepr {
    /** The nunber of visual characters in `this` String **/
    public var length(get,never):UInt;
    function get_length():UInt return (iterable()).count();
    public function toString():String return this.toString();

    @:allow(unicode.tr29)
    function self():UnicodeRepr return this;

    /*
    public function substr(pos:Int, ?len:Int) {
        return untyped Helper.unicodeCharacterSubstr(this, pos, len);
    }
    */

    /** Returns the `pos`th visual character in these Characters.
        
        If `pos` is negative, or `pos > this.length`, the result is "�".
     **/
    public function charAt(pos:Int):Character {
        return iterable().array()[pos];
    }

    /*
    public static function scalars(str:haxe.extern.EitherType<Characters,String>):UnicodeScalars {
        return cast(str,String);
    }
    */

    @:op(a + b)
    static function concatenateCharacters(a:Characters, b:Characters):Characters {
        return a.self().add(b.self());
    }

    @:op(a + b)
    @:commutative
    static function concatenateCharacter(a:Characters, b:Character):Characters {
        return a.self().add(b.self());
    }

    public function iterator():Iterator<Character> {
        var its = unicode.tr29.internal.Graphemes.characters(self());

        var itv = its.map(function(r) return @:privateAccess new Character(r));

        return itv.iterator();
    }

    @:to function iterable():Iterable<Character> {
        return { iterator: iterator };
    }
}

/** A single visual character.
    Examples: '𝌆' 'c' '🚲'
**/
abstract Character(UnicodeRepr) {
    function new(str:UnicodeRepr) this = str;

    @:allow(unicode.tr29)
    function self() return this;
    public function toString() return this.toString();

    /*
    macro public static function literal(str:String) {
        var C = haxe.macro.Context;
        var pos = C.currentPos();
        var count = (str:Character).length == 1;
        if (count != 1) C.error('Must be 1 character, not $count', pos);
        return macro (untyped $v{str}:unicode.tr29.Unicode.Character);
    }
    */

    @:op(a + b)
    static function concatenate(a:Character, b:Character):Characters {
        return a.self().add(b.self());
    }
}

/**

	Represents a sequence of unicode scalars.


	Scalars are immutable, it is not possible to modify individual

	scalars. No method of this class changes the state of `this` String.


	Scalars can be concatenated by using the `+` operator.
**/

/*
abstract UnicodeScalars(String) from String {
    // Number of unicode scalars in this String
    public var length(get,never):UInt;
    function get_length():UInt return Helper.unicodeScalarCount(this);

    @:allow(unicode.UnicodeString)
    function new(str:String) this = str;
    function self() return this;
    public function toString() return this;

    public static function characters(str:haxe.extern.EitherType<UnicodeScalars,String>):Characters {
        return cast(str,String);
    }

    public function iterator():Iterator<UnicodeScalar> {
        return untyped (Helper.unicodeScalars(this).iterator());
    }

    @:op(a + b) 
    static function concatenateScalars(a:UnicodeScalars, b:UnicodeScalars):UnicodeScalars {
        return (untyped a:String) + (untyped b:String);
    }

    @:op(a + b)
    @:commutative
    static function concatenateScalar(a:UnicodeScalars, b:UnicodeScalar):UnicodeScalars {
        return a.self() + b.self();
    }

    @:to function iterable():Iterable<UnicodeScalar> {
        return { iterator: iterator };
    }
}

abstract UnicodeScalar(String) {
    public var code(get,never):UInt;
    inline function get_code() return Helper.codePointAt(this, 0);

    @:allow(unicode.UnicodeScalars)
    function new(str:String) this = str;

    @:allow(unicode.tr29)
    function self() return this;

    public function toString() return this;

    public static function fromCodePoint(code:UInt):UnicodeScalar {
        return new UnicodeScalar(Helper.fromCodePoint(code));
    }

    @:op(a + b)
    static function concatenateScalar(a:UnicodeScalar, b:UnicodeScalar):UnicodeScalars {
        return a.self() + b.self();
    }

}
*/