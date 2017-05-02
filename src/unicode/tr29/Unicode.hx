package unicode.tr29;

import unicode.tr29.internal.Helper;

abstract Characters(String) from String {
    public var length(get,never):UInt;
    function get_length():UInt return Helper.unicodeCharacterCount(this);
    public function toString():String return this;

    public function substr(pos:Int, ?len:Int) {
        return untyped Helper.unicodeCharacterSubstr(this, pos, len);
    }

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

abstract Character(String) {
    @:allow(unicode.UnicodeString)
    function new(str:String) this = str;
    public function toString() return this;
}

abstract UnicodeScalars(String) from String {
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