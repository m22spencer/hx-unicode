package unicode.tr29;

import unicode.tr29.internal.Helper;

abstract UnicodeString(String) from String {
    public static function unicodeString(str:String):UnicodeString {
        return str;
    }

    public static function characters(str:haxe.extern.EitherType<UnicodeString,String>):Characters {
        return cast(str,String);
    }

    public static function scalars(str:haxe.extern.EitherType<UnicodeString,String>):UnicodeScalars {
        return cast(str,String);
    }
}

abstract Characters(String) from String {
    public function count():UInt return Helper.unicodeCharacterCount(this);
    public function toString():String return this;

    public function substr(pos:Int, ?len:Int) {
        return untyped Helper.unicodeCharacterSubstr(this, pos, len);
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
    @:allow(unicode.UnicodeString)
    function new(str:String) this = str;
    public function toString() return this;

    public function iterator():Iterator<UnicodeScalar> {
        return untyped (Helper.unicodeScalars(this).iterator());
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