package unicode.tr29;

import unicode.tr29.internal.Helper;

/**

	Represents sequences of Visual Characters.


	Characters are immutable, it is not possible to modify individual

	characters. No method of this class changes the state of `this` String.


	Characters can be concatenated by using the `+` operator.
**/
abstract Characters(String) from String {
    /** The nunber of visual characters in `this` String **/
    public var length(get,never):UInt;
    function get_length():UInt return Helper.unicodeCharacterCount(this);
    public function toString():String return this;

    public function substr(pos:Int, ?len:Int) {
        return untyped Helper.unicodeCharacterSubstr(this, pos, len);
    }

    /** Returns the `pos`th visual character in these Characters.
        
        If `pos` is negative, or `pos > this.length`, the result is "�".
     **/
    public function charAt(pos:Int):Character {
        return untyped Helper.unicodeCharacterAt(this, pos);
    }

    public static function scalars(str:haxe.extern.EitherType<Characters,String>):UnicodeScalars {
        return cast(str,String);
    }

    @:op(a + b)
    static function concatenateCharacters(a:Characters, b:Characters):Characters {
        return (untyped a:String) + (untyped b:String);
    }

    public function iterator():Iterator<Character> {
        return untyped (Helper.unicodeCharacters(this).iterator());
    }

    @:to function iterable():Iterable<Character> {
        return { iterator: iterator };
    }
}

/** A single visual character.
    Examples: '𝌆' 'c' '🚲'
**/
abstract Character(String) {
    @:allow(unicode.UnicodeString)
    function new(str:String) this = str;
    public function toString() return this;

    macro public static function literal(str:String) {
        var C = haxe.macro.Context;
        var pos = C.currentPos();
        var count = unicode.tr29.internal.Helper.unicodeCharacterCount(str);
        if (count != 1) C.error('Must be 1 character, not $count', pos);
        return macro (untyped $v{str}:unicode.tr29.Unicode.Character);
    }
}

/**

	Represents a sequence of unicode scalars.


	Scalars are immutable, it is not possible to modify individual

	scalars. No method of this class changes the state of `this` String.


	Scalars can be concatenated by using the `+` operator.
**/

abstract UnicodeScalars(String) from String {
    /* Number of unicode scalars in this String */
    public var length(get,never):UInt;
    function get_length():UInt return Helper.unicodeScalarCount(this);

    @:allow(unicode.UnicodeString)
    function new(str:String) this = str;
    public function toString() return this;

    public static function characters(str:haxe.extern.EitherType<UnicodeScalars,String>):Characters {
        return cast(str,String);
    }

    public function iterator():Iterator<UnicodeScalar> {
        return untyped (Helper.unicodeScalars(this).iterator());
    }

    @:op(a + b) static function concatenateScalars(a:UnicodeScalars, b:UnicodeScalars):UnicodeScalars {
        return (untyped a:String) + (untyped b:String);
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

    public function toString() return this;

    public static function fromCodePoint(code:UInt):UnicodeScalar {
        return new UnicodeScalar(Helper.fromCodePoint(code));
    }
}