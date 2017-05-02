package tr29;
class GraphemeBreakTests extends haxe.unit.TestCase {
    function test0() {
        assertEquals("÷ 0020 ÷ 0020 ÷", tr29.Tools.genBreaks([32,32]));
    }
    function test1() {
        assertEquals("÷ 0020 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([32,776,32]));
    }
    function test2() {
        assertEquals("÷ 0020 ÷ 000D ÷", tr29.Tools.genBreaks([32,13]));
    }
    function test3() {
        assertEquals("÷ 0020 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([32,776,13]));
    }
    function test4() {
        assertEquals("÷ 0020 ÷ 000A ÷", tr29.Tools.genBreaks([32,10]));
    }
    function test5() {
        assertEquals("÷ 0020 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([32,776,10]));
    }
    function test6() {
        assertEquals("÷ 0020 ÷ 0001 ÷", tr29.Tools.genBreaks([32,1]));
    }
    function test7() {
        assertEquals("÷ 0020 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([32,776,1]));
    }
    function test8() {
        assertEquals("÷ 0020 × 0300 ÷", tr29.Tools.genBreaks([32,768]));
    }
    function test9() {
        assertEquals("÷ 0020 × 0308 × 0300 ÷", tr29.Tools.genBreaks([32,776,768]));
    }
    function test10() {
        assertEquals("÷ 0020 ÷ 0600 ÷", tr29.Tools.genBreaks([32,1536]));
    }
    function test11() {
        assertEquals("÷ 0020 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([32,776,1536]));
    }
    function test12() {
        assertEquals("÷ 0020 × 0903 ÷", tr29.Tools.genBreaks([32,2307]));
    }
    function test13() {
        assertEquals("÷ 0020 × 0308 × 0903 ÷", tr29.Tools.genBreaks([32,776,2307]));
    }
    function test14() {
        assertEquals("÷ 0020 ÷ 1100 ÷", tr29.Tools.genBreaks([32,4352]));
    }
    function test15() {
        assertEquals("÷ 0020 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([32,776,4352]));
    }
    function test16() {
        assertEquals("÷ 0020 ÷ 1160 ÷", tr29.Tools.genBreaks([32,4448]));
    }
    function test17() {
        assertEquals("÷ 0020 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([32,776,4448]));
    }
    function test18() {
        assertEquals("÷ 0020 ÷ 11A8 ÷", tr29.Tools.genBreaks([32,4520]));
    }
    function test19() {
        assertEquals("÷ 0020 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([32,776,4520]));
    }
    function test20() {
        assertEquals("÷ 0020 ÷ AC00 ÷", tr29.Tools.genBreaks([32,44032]));
    }
    function test21() {
        assertEquals("÷ 0020 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([32,776,44032]));
    }
    function test22() {
        assertEquals("÷ 0020 ÷ AC01 ÷", tr29.Tools.genBreaks([32,44033]));
    }
    function test23() {
        assertEquals("÷ 0020 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([32,776,44033]));
    }
    function test24() {
        assertEquals("÷ 0020 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([32,127462]));
    }
    function test25() {
        assertEquals("÷ 0020 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([32,776,127462]));
    }
    function test26() {
        assertEquals("÷ 0020 ÷ 261D ÷", tr29.Tools.genBreaks([32,9757]));
    }
    function test27() {
        assertEquals("÷ 0020 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([32,776,9757]));
    }
    function test28() {
        assertEquals("÷ 0020 ÷ 1F3FB ÷", tr29.Tools.genBreaks([32,127995]));
    }
    function test29() {
        assertEquals("÷ 0020 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([32,776,127995]));
    }
    function test30() {
        assertEquals("÷ 0020 × 200D ÷", tr29.Tools.genBreaks([32,8205]));
    }
    function test31() {
        assertEquals("÷ 0020 × 0308 × 200D ÷", tr29.Tools.genBreaks([32,776,8205]));
    }
    function test32() {
        assertEquals("÷ 0020 ÷ 2764 ÷", tr29.Tools.genBreaks([32,10084]));
    }
    function test33() {
        assertEquals("÷ 0020 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([32,776,10084]));
    }
    function test34() {
        assertEquals("÷ 0020 ÷ 1F466 ÷", tr29.Tools.genBreaks([32,128102]));
    }
    function test35() {
        assertEquals("÷ 0020 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([32,776,128102]));
    }
    function test36() {
        assertEquals("÷ 0020 ÷ 0378 ÷", tr29.Tools.genBreaks([32,888]));
    }
    function test37() {
        assertEquals("÷ 0020 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([32,776,888]));
    }
    function test38() {
        assertEquals("÷ 0020 ÷ D800 ÷", tr29.Tools.genBreaks([32,55296]));
    }
    function test39() {
        assertEquals("÷ 0020 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([32,776,55296]));
    }
    function test40() {
        assertEquals("÷ 000D ÷ 0020 ÷", tr29.Tools.genBreaks([13,32]));
    }
    function test41() {
        assertEquals("÷ 000D ÷ 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([13,776,32]));
    }
    function test42() {
        assertEquals("÷ 000D ÷ 000D ÷", tr29.Tools.genBreaks([13,13]));
    }
    function test43() {
        assertEquals("÷ 000D ÷ 0308 ÷ 000D ÷", tr29.Tools.genBreaks([13,776,13]));
    }
    function test44() {
        assertEquals("÷ 000D × 000A ÷", tr29.Tools.genBreaks([13,10]));
    }
    function test45() {
        assertEquals("÷ 000D ÷ 0308 ÷ 000A ÷", tr29.Tools.genBreaks([13,776,10]));
    }
    function test46() {
        assertEquals("÷ 000D ÷ 0001 ÷", tr29.Tools.genBreaks([13,1]));
    }
    function test47() {
        assertEquals("÷ 000D ÷ 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([13,776,1]));
    }
    function test48() {
        assertEquals("÷ 000D ÷ 0300 ÷", tr29.Tools.genBreaks([13,768]));
    }
    function test49() {
        assertEquals("÷ 000D ÷ 0308 × 0300 ÷", tr29.Tools.genBreaks([13,776,768]));
    }
    function test50() {
        assertEquals("÷ 000D ÷ 0600 ÷", tr29.Tools.genBreaks([13,1536]));
    }
    function test51() {
        assertEquals("÷ 000D ÷ 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([13,776,1536]));
    }
    function test52() {
        assertEquals("÷ 000D ÷ 0903 ÷", tr29.Tools.genBreaks([13,2307]));
    }
    function test53() {
        assertEquals("÷ 000D ÷ 0308 × 0903 ÷", tr29.Tools.genBreaks([13,776,2307]));
    }
    function test54() {
        assertEquals("÷ 000D ÷ 1100 ÷", tr29.Tools.genBreaks([13,4352]));
    }
    function test55() {
        assertEquals("÷ 000D ÷ 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([13,776,4352]));
    }
    function test56() {
        assertEquals("÷ 000D ÷ 1160 ÷", tr29.Tools.genBreaks([13,4448]));
    }
    function test57() {
        assertEquals("÷ 000D ÷ 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([13,776,4448]));
    }
    function test58() {
        assertEquals("÷ 000D ÷ 11A8 ÷", tr29.Tools.genBreaks([13,4520]));
    }
    function test59() {
        assertEquals("÷ 000D ÷ 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([13,776,4520]));
    }
    function test60() {
        assertEquals("÷ 000D ÷ AC00 ÷", tr29.Tools.genBreaks([13,44032]));
    }
    function test61() {
        assertEquals("÷ 000D ÷ 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([13,776,44032]));
    }
    function test62() {
        assertEquals("÷ 000D ÷ AC01 ÷", tr29.Tools.genBreaks([13,44033]));
    }
    function test63() {
        assertEquals("÷ 000D ÷ 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([13,776,44033]));
    }
    function test64() {
        assertEquals("÷ 000D ÷ 1F1E6 ÷", tr29.Tools.genBreaks([13,127462]));
    }
    function test65() {
        assertEquals("÷ 000D ÷ 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([13,776,127462]));
    }
    function test66() {
        assertEquals("÷ 000D ÷ 261D ÷", tr29.Tools.genBreaks([13,9757]));
    }
    function test67() {
        assertEquals("÷ 000D ÷ 0308 ÷ 261D ÷", tr29.Tools.genBreaks([13,776,9757]));
    }
    function test68() {
        assertEquals("÷ 000D ÷ 1F3FB ÷", tr29.Tools.genBreaks([13,127995]));
    }
    function test69() {
        assertEquals("÷ 000D ÷ 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([13,776,127995]));
    }
    function test70() {
        assertEquals("÷ 000D ÷ 200D ÷", tr29.Tools.genBreaks([13,8205]));
    }
    function test71() {
        assertEquals("÷ 000D ÷ 0308 × 200D ÷", tr29.Tools.genBreaks([13,776,8205]));
    }
    function test72() {
        assertEquals("÷ 000D ÷ 2764 ÷", tr29.Tools.genBreaks([13,10084]));
    }
    function test73() {
        assertEquals("÷ 000D ÷ 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([13,776,10084]));
    }
    function test74() {
        assertEquals("÷ 000D ÷ 1F466 ÷", tr29.Tools.genBreaks([13,128102]));
    }
    function test75() {
        assertEquals("÷ 000D ÷ 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([13,776,128102]));
    }
    function test76() {
        assertEquals("÷ 000D ÷ 0378 ÷", tr29.Tools.genBreaks([13,888]));
    }
    function test77() {
        assertEquals("÷ 000D ÷ 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([13,776,888]));
    }
    function test78() {
        assertEquals("÷ 000D ÷ D800 ÷", tr29.Tools.genBreaks([13,55296]));
    }
    function test79() {
        assertEquals("÷ 000D ÷ 0308 ÷ D800 ÷", tr29.Tools.genBreaks([13,776,55296]));
    }
    function test80() {
        assertEquals("÷ 000A ÷ 0020 ÷", tr29.Tools.genBreaks([10,32]));
    }
    function test81() {
        assertEquals("÷ 000A ÷ 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([10,776,32]));
    }
    function test82() {
        assertEquals("÷ 000A ÷ 000D ÷", tr29.Tools.genBreaks([10,13]));
    }
    function test83() {
        assertEquals("÷ 000A ÷ 0308 ÷ 000D ÷", tr29.Tools.genBreaks([10,776,13]));
    }
    function test84() {
        assertEquals("÷ 000A ÷ 000A ÷", tr29.Tools.genBreaks([10,10]));
    }
    function test85() {
        assertEquals("÷ 000A ÷ 0308 ÷ 000A ÷", tr29.Tools.genBreaks([10,776,10]));
    }
    function test86() {
        assertEquals("÷ 000A ÷ 0001 ÷", tr29.Tools.genBreaks([10,1]));
    }
    function test87() {
        assertEquals("÷ 000A ÷ 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([10,776,1]));
    }
    function test88() {
        assertEquals("÷ 000A ÷ 0300 ÷", tr29.Tools.genBreaks([10,768]));
    }
    function test89() {
        assertEquals("÷ 000A ÷ 0308 × 0300 ÷", tr29.Tools.genBreaks([10,776,768]));
    }
    function test90() {
        assertEquals("÷ 000A ÷ 0600 ÷", tr29.Tools.genBreaks([10,1536]));
    }
    function test91() {
        assertEquals("÷ 000A ÷ 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([10,776,1536]));
    }
    function test92() {
        assertEquals("÷ 000A ÷ 0903 ÷", tr29.Tools.genBreaks([10,2307]));
    }
    function test93() {
        assertEquals("÷ 000A ÷ 0308 × 0903 ÷", tr29.Tools.genBreaks([10,776,2307]));
    }
    function test94() {
        assertEquals("÷ 000A ÷ 1100 ÷", tr29.Tools.genBreaks([10,4352]));
    }
    function test95() {
        assertEquals("÷ 000A ÷ 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([10,776,4352]));
    }
    function test96() {
        assertEquals("÷ 000A ÷ 1160 ÷", tr29.Tools.genBreaks([10,4448]));
    }
    function test97() {
        assertEquals("÷ 000A ÷ 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([10,776,4448]));
    }
    function test98() {
        assertEquals("÷ 000A ÷ 11A8 ÷", tr29.Tools.genBreaks([10,4520]));
    }
    function test99() {
        assertEquals("÷ 000A ÷ 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([10,776,4520]));
    }
    function test100() {
        assertEquals("÷ 000A ÷ AC00 ÷", tr29.Tools.genBreaks([10,44032]));
    }
    function test101() {
        assertEquals("÷ 000A ÷ 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([10,776,44032]));
    }
    function test102() {
        assertEquals("÷ 000A ÷ AC01 ÷", tr29.Tools.genBreaks([10,44033]));
    }
    function test103() {
        assertEquals("÷ 000A ÷ 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([10,776,44033]));
    }
    function test104() {
        assertEquals("÷ 000A ÷ 1F1E6 ÷", tr29.Tools.genBreaks([10,127462]));
    }
    function test105() {
        assertEquals("÷ 000A ÷ 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([10,776,127462]));
    }
    function test106() {
        assertEquals("÷ 000A ÷ 261D ÷", tr29.Tools.genBreaks([10,9757]));
    }
    function test107() {
        assertEquals("÷ 000A ÷ 0308 ÷ 261D ÷", tr29.Tools.genBreaks([10,776,9757]));
    }
    function test108() {
        assertEquals("÷ 000A ÷ 1F3FB ÷", tr29.Tools.genBreaks([10,127995]));
    }
    function test109() {
        assertEquals("÷ 000A ÷ 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([10,776,127995]));
    }
    function test110() {
        assertEquals("÷ 000A ÷ 200D ÷", tr29.Tools.genBreaks([10,8205]));
    }
    function test111() {
        assertEquals("÷ 000A ÷ 0308 × 200D ÷", tr29.Tools.genBreaks([10,776,8205]));
    }
    function test112() {
        assertEquals("÷ 000A ÷ 2764 ÷", tr29.Tools.genBreaks([10,10084]));
    }
    function test113() {
        assertEquals("÷ 000A ÷ 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([10,776,10084]));
    }
    function test114() {
        assertEquals("÷ 000A ÷ 1F466 ÷", tr29.Tools.genBreaks([10,128102]));
    }
    function test115() {
        assertEquals("÷ 000A ÷ 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([10,776,128102]));
    }
    function test116() {
        assertEquals("÷ 000A ÷ 0378 ÷", tr29.Tools.genBreaks([10,888]));
    }
    function test117() {
        assertEquals("÷ 000A ÷ 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([10,776,888]));
    }
    function test118() {
        assertEquals("÷ 000A ÷ D800 ÷", tr29.Tools.genBreaks([10,55296]));
    }
    function test119() {
        assertEquals("÷ 000A ÷ 0308 ÷ D800 ÷", tr29.Tools.genBreaks([10,776,55296]));
    }
    function test120() {
        assertEquals("÷ 0001 ÷ 0020 ÷", tr29.Tools.genBreaks([1,32]));
    }
    function test121() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([1,776,32]));
    }
    function test122() {
        assertEquals("÷ 0001 ÷ 000D ÷", tr29.Tools.genBreaks([1,13]));
    }
    function test123() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 000D ÷", tr29.Tools.genBreaks([1,776,13]));
    }
    function test124() {
        assertEquals("÷ 0001 ÷ 000A ÷", tr29.Tools.genBreaks([1,10]));
    }
    function test125() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 000A ÷", tr29.Tools.genBreaks([1,776,10]));
    }
    function test126() {
        assertEquals("÷ 0001 ÷ 0001 ÷", tr29.Tools.genBreaks([1,1]));
    }
    function test127() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([1,776,1]));
    }
    function test128() {
        assertEquals("÷ 0001 ÷ 0300 ÷", tr29.Tools.genBreaks([1,768]));
    }
    function test129() {
        assertEquals("÷ 0001 ÷ 0308 × 0300 ÷", tr29.Tools.genBreaks([1,776,768]));
    }
    function test130() {
        assertEquals("÷ 0001 ÷ 0600 ÷", tr29.Tools.genBreaks([1,1536]));
    }
    function test131() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([1,776,1536]));
    }
    function test132() {
        assertEquals("÷ 0001 ÷ 0903 ÷", tr29.Tools.genBreaks([1,2307]));
    }
    function test133() {
        assertEquals("÷ 0001 ÷ 0308 × 0903 ÷", tr29.Tools.genBreaks([1,776,2307]));
    }
    function test134() {
        assertEquals("÷ 0001 ÷ 1100 ÷", tr29.Tools.genBreaks([1,4352]));
    }
    function test135() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([1,776,4352]));
    }
    function test136() {
        assertEquals("÷ 0001 ÷ 1160 ÷", tr29.Tools.genBreaks([1,4448]));
    }
    function test137() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([1,776,4448]));
    }
    function test138() {
        assertEquals("÷ 0001 ÷ 11A8 ÷", tr29.Tools.genBreaks([1,4520]));
    }
    function test139() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([1,776,4520]));
    }
    function test140() {
        assertEquals("÷ 0001 ÷ AC00 ÷", tr29.Tools.genBreaks([1,44032]));
    }
    function test141() {
        assertEquals("÷ 0001 ÷ 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([1,776,44032]));
    }
    function test142() {
        assertEquals("÷ 0001 ÷ AC01 ÷", tr29.Tools.genBreaks([1,44033]));
    }
    function test143() {
        assertEquals("÷ 0001 ÷ 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([1,776,44033]));
    }
    function test144() {
        assertEquals("÷ 0001 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([1,127462]));
    }
    function test145() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([1,776,127462]));
    }
    function test146() {
        assertEquals("÷ 0001 ÷ 261D ÷", tr29.Tools.genBreaks([1,9757]));
    }
    function test147() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 261D ÷", tr29.Tools.genBreaks([1,776,9757]));
    }
    function test148() {
        assertEquals("÷ 0001 ÷ 1F3FB ÷", tr29.Tools.genBreaks([1,127995]));
    }
    function test149() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([1,776,127995]));
    }
    function test150() {
        assertEquals("÷ 0001 ÷ 200D ÷", tr29.Tools.genBreaks([1,8205]));
    }
    function test151() {
        assertEquals("÷ 0001 ÷ 0308 × 200D ÷", tr29.Tools.genBreaks([1,776,8205]));
    }
    function test152() {
        assertEquals("÷ 0001 ÷ 2764 ÷", tr29.Tools.genBreaks([1,10084]));
    }
    function test153() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([1,776,10084]));
    }
    function test154() {
        assertEquals("÷ 0001 ÷ 1F466 ÷", tr29.Tools.genBreaks([1,128102]));
    }
    function test155() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([1,776,128102]));
    }
    function test156() {
        assertEquals("÷ 0001 ÷ 0378 ÷", tr29.Tools.genBreaks([1,888]));
    }
    function test157() {
        assertEquals("÷ 0001 ÷ 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([1,776,888]));
    }
    function test158() {
        assertEquals("÷ 0001 ÷ D800 ÷", tr29.Tools.genBreaks([1,55296]));
    }
    function test159() {
        assertEquals("÷ 0001 ÷ 0308 ÷ D800 ÷", tr29.Tools.genBreaks([1,776,55296]));
    }
    function test160() {
        assertEquals("÷ 0300 ÷ 0020 ÷", tr29.Tools.genBreaks([768,32]));
    }
    function test161() {
        assertEquals("÷ 0300 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([768,776,32]));
    }
    function test162() {
        assertEquals("÷ 0300 ÷ 000D ÷", tr29.Tools.genBreaks([768,13]));
    }
    function test163() {
        assertEquals("÷ 0300 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([768,776,13]));
    }
    function test164() {
        assertEquals("÷ 0300 ÷ 000A ÷", tr29.Tools.genBreaks([768,10]));
    }
    function test165() {
        assertEquals("÷ 0300 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([768,776,10]));
    }
    function test166() {
        assertEquals("÷ 0300 ÷ 0001 ÷", tr29.Tools.genBreaks([768,1]));
    }
    function test167() {
        assertEquals("÷ 0300 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([768,776,1]));
    }
    function test168() {
        assertEquals("÷ 0300 × 0300 ÷", tr29.Tools.genBreaks([768,768]));
    }
    function test169() {
        assertEquals("÷ 0300 × 0308 × 0300 ÷", tr29.Tools.genBreaks([768,776,768]));
    }
    function test170() {
        assertEquals("÷ 0300 ÷ 0600 ÷", tr29.Tools.genBreaks([768,1536]));
    }
    function test171() {
        assertEquals("÷ 0300 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([768,776,1536]));
    }
    function test172() {
        assertEquals("÷ 0300 × 0903 ÷", tr29.Tools.genBreaks([768,2307]));
    }
    function test173() {
        assertEquals("÷ 0300 × 0308 × 0903 ÷", tr29.Tools.genBreaks([768,776,2307]));
    }
    function test174() {
        assertEquals("÷ 0300 ÷ 1100 ÷", tr29.Tools.genBreaks([768,4352]));
    }
    function test175() {
        assertEquals("÷ 0300 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([768,776,4352]));
    }
    function test176() {
        assertEquals("÷ 0300 ÷ 1160 ÷", tr29.Tools.genBreaks([768,4448]));
    }
    function test177() {
        assertEquals("÷ 0300 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([768,776,4448]));
    }
    function test178() {
        assertEquals("÷ 0300 ÷ 11A8 ÷", tr29.Tools.genBreaks([768,4520]));
    }
    function test179() {
        assertEquals("÷ 0300 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([768,776,4520]));
    }
    function test180() {
        assertEquals("÷ 0300 ÷ AC00 ÷", tr29.Tools.genBreaks([768,44032]));
    }
    function test181() {
        assertEquals("÷ 0300 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([768,776,44032]));
    }
    function test182() {
        assertEquals("÷ 0300 ÷ AC01 ÷", tr29.Tools.genBreaks([768,44033]));
    }
    function test183() {
        assertEquals("÷ 0300 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([768,776,44033]));
    }
    function test184() {
        assertEquals("÷ 0300 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([768,127462]));
    }
    function test185() {
        assertEquals("÷ 0300 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([768,776,127462]));
    }
    function test186() {
        assertEquals("÷ 0300 ÷ 261D ÷", tr29.Tools.genBreaks([768,9757]));
    }
    function test187() {
        assertEquals("÷ 0300 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([768,776,9757]));
    }
    function test188() {
        assertEquals("÷ 0300 ÷ 1F3FB ÷", tr29.Tools.genBreaks([768,127995]));
    }
    function test189() {
        assertEquals("÷ 0300 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([768,776,127995]));
    }
    function test190() {
        assertEquals("÷ 0300 × 200D ÷", tr29.Tools.genBreaks([768,8205]));
    }
    function test191() {
        assertEquals("÷ 0300 × 0308 × 200D ÷", tr29.Tools.genBreaks([768,776,8205]));
    }
    function test192() {
        assertEquals("÷ 0300 ÷ 2764 ÷", tr29.Tools.genBreaks([768,10084]));
    }
    function test193() {
        assertEquals("÷ 0300 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([768,776,10084]));
    }
    function test194() {
        assertEquals("÷ 0300 ÷ 1F466 ÷", tr29.Tools.genBreaks([768,128102]));
    }
    function test195() {
        assertEquals("÷ 0300 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([768,776,128102]));
    }
    function test196() {
        assertEquals("÷ 0300 ÷ 0378 ÷", tr29.Tools.genBreaks([768,888]));
    }
    function test197() {
        assertEquals("÷ 0300 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([768,776,888]));
    }
    function test198() {
        assertEquals("÷ 0300 ÷ D800 ÷", tr29.Tools.genBreaks([768,55296]));
    }
    function test199() {
        assertEquals("÷ 0300 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([768,776,55296]));
    }
    function test200() {
        assertEquals("÷ 0600 × 0020 ÷", tr29.Tools.genBreaks([1536,32]));
    }
    function test201() {
        assertEquals("÷ 0600 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([1536,776,32]));
    }
    function test202() {
        assertEquals("÷ 0600 ÷ 000D ÷", tr29.Tools.genBreaks([1536,13]));
    }
    function test203() {
        assertEquals("÷ 0600 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([1536,776,13]));
    }
    function test204() {
        assertEquals("÷ 0600 ÷ 000A ÷", tr29.Tools.genBreaks([1536,10]));
    }
    function test205() {
        assertEquals("÷ 0600 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([1536,776,10]));
    }
    function test206() {
        assertEquals("÷ 0600 ÷ 0001 ÷", tr29.Tools.genBreaks([1536,1]));
    }
    function test207() {
        assertEquals("÷ 0600 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([1536,776,1]));
    }
    function test208() {
        assertEquals("÷ 0600 × 0300 ÷", tr29.Tools.genBreaks([1536,768]));
    }
    function test209() {
        assertEquals("÷ 0600 × 0308 × 0300 ÷", tr29.Tools.genBreaks([1536,776,768]));
    }
    function test210() {
        assertEquals("÷ 0600 × 0600 ÷", tr29.Tools.genBreaks([1536,1536]));
    }
    function test211() {
        assertEquals("÷ 0600 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([1536,776,1536]));
    }
    function test212() {
        assertEquals("÷ 0600 × 0903 ÷", tr29.Tools.genBreaks([1536,2307]));
    }
    function test213() {
        assertEquals("÷ 0600 × 0308 × 0903 ÷", tr29.Tools.genBreaks([1536,776,2307]));
    }
    function test214() {
        assertEquals("÷ 0600 × 1100 ÷", tr29.Tools.genBreaks([1536,4352]));
    }
    function test215() {
        assertEquals("÷ 0600 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([1536,776,4352]));
    }
    function test216() {
        assertEquals("÷ 0600 × 1160 ÷", tr29.Tools.genBreaks([1536,4448]));
    }
    function test217() {
        assertEquals("÷ 0600 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([1536,776,4448]));
    }
    function test218() {
        assertEquals("÷ 0600 × 11A8 ÷", tr29.Tools.genBreaks([1536,4520]));
    }
    function test219() {
        assertEquals("÷ 0600 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([1536,776,4520]));
    }
    function test220() {
        assertEquals("÷ 0600 × AC00 ÷", tr29.Tools.genBreaks([1536,44032]));
    }
    function test221() {
        assertEquals("÷ 0600 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([1536,776,44032]));
    }
    function test222() {
        assertEquals("÷ 0600 × AC01 ÷", tr29.Tools.genBreaks([1536,44033]));
    }
    function test223() {
        assertEquals("÷ 0600 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([1536,776,44033]));
    }
    function test224() {
        assertEquals("÷ 0600 × 1F1E6 ÷", tr29.Tools.genBreaks([1536,127462]));
    }
    function test225() {
        assertEquals("÷ 0600 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([1536,776,127462]));
    }
    function test226() {
        assertEquals("÷ 0600 × 261D ÷", tr29.Tools.genBreaks([1536,9757]));
    }
    function test227() {
        assertEquals("÷ 0600 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([1536,776,9757]));
    }
    function test228() {
        assertEquals("÷ 0600 × 1F3FB ÷", tr29.Tools.genBreaks([1536,127995]));
    }
    function test229() {
        assertEquals("÷ 0600 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([1536,776,127995]));
    }
    function test230() {
        assertEquals("÷ 0600 × 200D ÷", tr29.Tools.genBreaks([1536,8205]));
    }
    function test231() {
        assertEquals("÷ 0600 × 0308 × 200D ÷", tr29.Tools.genBreaks([1536,776,8205]));
    }
    function test232() {
        assertEquals("÷ 0600 × 2764 ÷", tr29.Tools.genBreaks([1536,10084]));
    }
    function test233() {
        assertEquals("÷ 0600 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([1536,776,10084]));
    }
    function test234() {
        assertEquals("÷ 0600 × 1F466 ÷", tr29.Tools.genBreaks([1536,128102]));
    }
    function test235() {
        assertEquals("÷ 0600 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([1536,776,128102]));
    }
    function test236() {
        assertEquals("÷ 0600 × 0378 ÷", tr29.Tools.genBreaks([1536,888]));
    }
    function test237() {
        assertEquals("÷ 0600 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([1536,776,888]));
    }
    function test238() {
        assertEquals("÷ 0600 ÷ D800 ÷", tr29.Tools.genBreaks([1536,55296]));
    }
    function test239() {
        assertEquals("÷ 0600 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([1536,776,55296]));
    }
    function test240() {
        assertEquals("÷ 0903 ÷ 0020 ÷", tr29.Tools.genBreaks([2307,32]));
    }
    function test241() {
        assertEquals("÷ 0903 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([2307,776,32]));
    }
    function test242() {
        assertEquals("÷ 0903 ÷ 000D ÷", tr29.Tools.genBreaks([2307,13]));
    }
    function test243() {
        assertEquals("÷ 0903 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([2307,776,13]));
    }
    function test244() {
        assertEquals("÷ 0903 ÷ 000A ÷", tr29.Tools.genBreaks([2307,10]));
    }
    function test245() {
        assertEquals("÷ 0903 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([2307,776,10]));
    }
    function test246() {
        assertEquals("÷ 0903 ÷ 0001 ÷", tr29.Tools.genBreaks([2307,1]));
    }
    function test247() {
        assertEquals("÷ 0903 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([2307,776,1]));
    }
    function test248() {
        assertEquals("÷ 0903 × 0300 ÷", tr29.Tools.genBreaks([2307,768]));
    }
    function test249() {
        assertEquals("÷ 0903 × 0308 × 0300 ÷", tr29.Tools.genBreaks([2307,776,768]));
    }
    function test250() {
        assertEquals("÷ 0903 ÷ 0600 ÷", tr29.Tools.genBreaks([2307,1536]));
    }
    function test251() {
        assertEquals("÷ 0903 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([2307,776,1536]));
    }
    function test252() {
        assertEquals("÷ 0903 × 0903 ÷", tr29.Tools.genBreaks([2307,2307]));
    }
    function test253() {
        assertEquals("÷ 0903 × 0308 × 0903 ÷", tr29.Tools.genBreaks([2307,776,2307]));
    }
    function test254() {
        assertEquals("÷ 0903 ÷ 1100 ÷", tr29.Tools.genBreaks([2307,4352]));
    }
    function test255() {
        assertEquals("÷ 0903 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([2307,776,4352]));
    }
    function test256() {
        assertEquals("÷ 0903 ÷ 1160 ÷", tr29.Tools.genBreaks([2307,4448]));
    }
    function test257() {
        assertEquals("÷ 0903 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([2307,776,4448]));
    }
    function test258() {
        assertEquals("÷ 0903 ÷ 11A8 ÷", tr29.Tools.genBreaks([2307,4520]));
    }
    function test259() {
        assertEquals("÷ 0903 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([2307,776,4520]));
    }
    function test260() {
        assertEquals("÷ 0903 ÷ AC00 ÷", tr29.Tools.genBreaks([2307,44032]));
    }
    function test261() {
        assertEquals("÷ 0903 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([2307,776,44032]));
    }
    function test262() {
        assertEquals("÷ 0903 ÷ AC01 ÷", tr29.Tools.genBreaks([2307,44033]));
    }
    function test263() {
        assertEquals("÷ 0903 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([2307,776,44033]));
    }
    function test264() {
        assertEquals("÷ 0903 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([2307,127462]));
    }
    function test265() {
        assertEquals("÷ 0903 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([2307,776,127462]));
    }
    function test266() {
        assertEquals("÷ 0903 ÷ 261D ÷", tr29.Tools.genBreaks([2307,9757]));
    }
    function test267() {
        assertEquals("÷ 0903 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([2307,776,9757]));
    }
    function test268() {
        assertEquals("÷ 0903 ÷ 1F3FB ÷", tr29.Tools.genBreaks([2307,127995]));
    }
    function test269() {
        assertEquals("÷ 0903 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([2307,776,127995]));
    }
    function test270() {
        assertEquals("÷ 0903 × 200D ÷", tr29.Tools.genBreaks([2307,8205]));
    }
    function test271() {
        assertEquals("÷ 0903 × 0308 × 200D ÷", tr29.Tools.genBreaks([2307,776,8205]));
    }
    function test272() {
        assertEquals("÷ 0903 ÷ 2764 ÷", tr29.Tools.genBreaks([2307,10084]));
    }
    function test273() {
        assertEquals("÷ 0903 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([2307,776,10084]));
    }
    function test274() {
        assertEquals("÷ 0903 ÷ 1F466 ÷", tr29.Tools.genBreaks([2307,128102]));
    }
    function test275() {
        assertEquals("÷ 0903 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([2307,776,128102]));
    }
    function test276() {
        assertEquals("÷ 0903 ÷ 0378 ÷", tr29.Tools.genBreaks([2307,888]));
    }
    function test277() {
        assertEquals("÷ 0903 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([2307,776,888]));
    }
    function test278() {
        assertEquals("÷ 0903 ÷ D800 ÷", tr29.Tools.genBreaks([2307,55296]));
    }
    function test279() {
        assertEquals("÷ 0903 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([2307,776,55296]));
    }
    function test280() {
        assertEquals("÷ 1100 ÷ 0020 ÷", tr29.Tools.genBreaks([4352,32]));
    }
    function test281() {
        assertEquals("÷ 1100 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([4352,776,32]));
    }
    function test282() {
        assertEquals("÷ 1100 ÷ 000D ÷", tr29.Tools.genBreaks([4352,13]));
    }
    function test283() {
        assertEquals("÷ 1100 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([4352,776,13]));
    }
    function test284() {
        assertEquals("÷ 1100 ÷ 000A ÷", tr29.Tools.genBreaks([4352,10]));
    }
    function test285() {
        assertEquals("÷ 1100 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([4352,776,10]));
    }
    function test286() {
        assertEquals("÷ 1100 ÷ 0001 ÷", tr29.Tools.genBreaks([4352,1]));
    }
    function test287() {
        assertEquals("÷ 1100 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([4352,776,1]));
    }
    function test288() {
        assertEquals("÷ 1100 × 0300 ÷", tr29.Tools.genBreaks([4352,768]));
    }
    function test289() {
        assertEquals("÷ 1100 × 0308 × 0300 ÷", tr29.Tools.genBreaks([4352,776,768]));
    }
    function test290() {
        assertEquals("÷ 1100 ÷ 0600 ÷", tr29.Tools.genBreaks([4352,1536]));
    }
    function test291() {
        assertEquals("÷ 1100 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([4352,776,1536]));
    }
    function test292() {
        assertEquals("÷ 1100 × 0903 ÷", tr29.Tools.genBreaks([4352,2307]));
    }
    function test293() {
        assertEquals("÷ 1100 × 0308 × 0903 ÷", tr29.Tools.genBreaks([4352,776,2307]));
    }
    function test294() {
        assertEquals("÷ 1100 × 1100 ÷", tr29.Tools.genBreaks([4352,4352]));
    }
    function test295() {
        assertEquals("÷ 1100 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([4352,776,4352]));
    }
    function test296() {
        assertEquals("÷ 1100 × 1160 ÷", tr29.Tools.genBreaks([4352,4448]));
    }
    function test297() {
        assertEquals("÷ 1100 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([4352,776,4448]));
    }
    function test298() {
        assertEquals("÷ 1100 ÷ 11A8 ÷", tr29.Tools.genBreaks([4352,4520]));
    }
    function test299() {
        assertEquals("÷ 1100 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([4352,776,4520]));
    }
    function test300() {
        assertEquals("÷ 1100 × AC00 ÷", tr29.Tools.genBreaks([4352,44032]));
    }
    function test301() {
        assertEquals("÷ 1100 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([4352,776,44032]));
    }
    function test302() {
        assertEquals("÷ 1100 × AC01 ÷", tr29.Tools.genBreaks([4352,44033]));
    }
    function test303() {
        assertEquals("÷ 1100 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([4352,776,44033]));
    }
    function test304() {
        assertEquals("÷ 1100 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([4352,127462]));
    }
    function test305() {
        assertEquals("÷ 1100 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([4352,776,127462]));
    }
    function test306() {
        assertEquals("÷ 1100 ÷ 261D ÷", tr29.Tools.genBreaks([4352,9757]));
    }
    function test307() {
        assertEquals("÷ 1100 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([4352,776,9757]));
    }
    function test308() {
        assertEquals("÷ 1100 ÷ 1F3FB ÷", tr29.Tools.genBreaks([4352,127995]));
    }
    function test309() {
        assertEquals("÷ 1100 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([4352,776,127995]));
    }
    function test310() {
        assertEquals("÷ 1100 × 200D ÷", tr29.Tools.genBreaks([4352,8205]));
    }
    function test311() {
        assertEquals("÷ 1100 × 0308 × 200D ÷", tr29.Tools.genBreaks([4352,776,8205]));
    }
    function test312() {
        assertEquals("÷ 1100 ÷ 2764 ÷", tr29.Tools.genBreaks([4352,10084]));
    }
    function test313() {
        assertEquals("÷ 1100 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([4352,776,10084]));
    }
    function test314() {
        assertEquals("÷ 1100 ÷ 1F466 ÷", tr29.Tools.genBreaks([4352,128102]));
    }
    function test315() {
        assertEquals("÷ 1100 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([4352,776,128102]));
    }
    function test316() {
        assertEquals("÷ 1100 ÷ 0378 ÷", tr29.Tools.genBreaks([4352,888]));
    }
    function test317() {
        assertEquals("÷ 1100 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([4352,776,888]));
    }
    function test318() {
        assertEquals("÷ 1100 ÷ D800 ÷", tr29.Tools.genBreaks([4352,55296]));
    }
    function test319() {
        assertEquals("÷ 1100 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([4352,776,55296]));
    }
    function test320() {
        assertEquals("÷ 1160 ÷ 0020 ÷", tr29.Tools.genBreaks([4448,32]));
    }
    function test321() {
        assertEquals("÷ 1160 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([4448,776,32]));
    }
    function test322() {
        assertEquals("÷ 1160 ÷ 000D ÷", tr29.Tools.genBreaks([4448,13]));
    }
    function test323() {
        assertEquals("÷ 1160 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([4448,776,13]));
    }
    function test324() {
        assertEquals("÷ 1160 ÷ 000A ÷", tr29.Tools.genBreaks([4448,10]));
    }
    function test325() {
        assertEquals("÷ 1160 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([4448,776,10]));
    }
    function test326() {
        assertEquals("÷ 1160 ÷ 0001 ÷", tr29.Tools.genBreaks([4448,1]));
    }
    function test327() {
        assertEquals("÷ 1160 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([4448,776,1]));
    }
    function test328() {
        assertEquals("÷ 1160 × 0300 ÷", tr29.Tools.genBreaks([4448,768]));
    }
    function test329() {
        assertEquals("÷ 1160 × 0308 × 0300 ÷", tr29.Tools.genBreaks([4448,776,768]));
    }
    function test330() {
        assertEquals("÷ 1160 ÷ 0600 ÷", tr29.Tools.genBreaks([4448,1536]));
    }
    function test331() {
        assertEquals("÷ 1160 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([4448,776,1536]));
    }
    function test332() {
        assertEquals("÷ 1160 × 0903 ÷", tr29.Tools.genBreaks([4448,2307]));
    }
    function test333() {
        assertEquals("÷ 1160 × 0308 × 0903 ÷", tr29.Tools.genBreaks([4448,776,2307]));
    }
    function test334() {
        assertEquals("÷ 1160 ÷ 1100 ÷", tr29.Tools.genBreaks([4448,4352]));
    }
    function test335() {
        assertEquals("÷ 1160 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([4448,776,4352]));
    }
    function test336() {
        assertEquals("÷ 1160 × 1160 ÷", tr29.Tools.genBreaks([4448,4448]));
    }
    function test337() {
        assertEquals("÷ 1160 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([4448,776,4448]));
    }
    function test338() {
        assertEquals("÷ 1160 × 11A8 ÷", tr29.Tools.genBreaks([4448,4520]));
    }
    function test339() {
        assertEquals("÷ 1160 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([4448,776,4520]));
    }
    function test340() {
        assertEquals("÷ 1160 ÷ AC00 ÷", tr29.Tools.genBreaks([4448,44032]));
    }
    function test341() {
        assertEquals("÷ 1160 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([4448,776,44032]));
    }
    function test342() {
        assertEquals("÷ 1160 ÷ AC01 ÷", tr29.Tools.genBreaks([4448,44033]));
    }
    function test343() {
        assertEquals("÷ 1160 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([4448,776,44033]));
    }
    function test344() {
        assertEquals("÷ 1160 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([4448,127462]));
    }
    function test345() {
        assertEquals("÷ 1160 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([4448,776,127462]));
    }
    function test346() {
        assertEquals("÷ 1160 ÷ 261D ÷", tr29.Tools.genBreaks([4448,9757]));
    }
    function test347() {
        assertEquals("÷ 1160 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([4448,776,9757]));
    }
    function test348() {
        assertEquals("÷ 1160 ÷ 1F3FB ÷", tr29.Tools.genBreaks([4448,127995]));
    }
    function test349() {
        assertEquals("÷ 1160 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([4448,776,127995]));
    }
    function test350() {
        assertEquals("÷ 1160 × 200D ÷", tr29.Tools.genBreaks([4448,8205]));
    }
    function test351() {
        assertEquals("÷ 1160 × 0308 × 200D ÷", tr29.Tools.genBreaks([4448,776,8205]));
    }
    function test352() {
        assertEquals("÷ 1160 ÷ 2764 ÷", tr29.Tools.genBreaks([4448,10084]));
    }
    function test353() {
        assertEquals("÷ 1160 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([4448,776,10084]));
    }
    function test354() {
        assertEquals("÷ 1160 ÷ 1F466 ÷", tr29.Tools.genBreaks([4448,128102]));
    }
    function test355() {
        assertEquals("÷ 1160 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([4448,776,128102]));
    }
    function test356() {
        assertEquals("÷ 1160 ÷ 0378 ÷", tr29.Tools.genBreaks([4448,888]));
    }
    function test357() {
        assertEquals("÷ 1160 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([4448,776,888]));
    }
    function test358() {
        assertEquals("÷ 1160 ÷ D800 ÷", tr29.Tools.genBreaks([4448,55296]));
    }
    function test359() {
        assertEquals("÷ 1160 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([4448,776,55296]));
    }
    function test360() {
        assertEquals("÷ 11A8 ÷ 0020 ÷", tr29.Tools.genBreaks([4520,32]));
    }
    function test361() {
        assertEquals("÷ 11A8 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([4520,776,32]));
    }
    function test362() {
        assertEquals("÷ 11A8 ÷ 000D ÷", tr29.Tools.genBreaks([4520,13]));
    }
    function test363() {
        assertEquals("÷ 11A8 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([4520,776,13]));
    }
    function test364() {
        assertEquals("÷ 11A8 ÷ 000A ÷", tr29.Tools.genBreaks([4520,10]));
    }
    function test365() {
        assertEquals("÷ 11A8 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([4520,776,10]));
    }
    function test366() {
        assertEquals("÷ 11A8 ÷ 0001 ÷", tr29.Tools.genBreaks([4520,1]));
    }
    function test367() {
        assertEquals("÷ 11A8 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([4520,776,1]));
    }
    function test368() {
        assertEquals("÷ 11A8 × 0300 ÷", tr29.Tools.genBreaks([4520,768]));
    }
    function test369() {
        assertEquals("÷ 11A8 × 0308 × 0300 ÷", tr29.Tools.genBreaks([4520,776,768]));
    }
    function test370() {
        assertEquals("÷ 11A8 ÷ 0600 ÷", tr29.Tools.genBreaks([4520,1536]));
    }
    function test371() {
        assertEquals("÷ 11A8 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([4520,776,1536]));
    }
    function test372() {
        assertEquals("÷ 11A8 × 0903 ÷", tr29.Tools.genBreaks([4520,2307]));
    }
    function test373() {
        assertEquals("÷ 11A8 × 0308 × 0903 ÷", tr29.Tools.genBreaks([4520,776,2307]));
    }
    function test374() {
        assertEquals("÷ 11A8 ÷ 1100 ÷", tr29.Tools.genBreaks([4520,4352]));
    }
    function test375() {
        assertEquals("÷ 11A8 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([4520,776,4352]));
    }
    function test376() {
        assertEquals("÷ 11A8 ÷ 1160 ÷", tr29.Tools.genBreaks([4520,4448]));
    }
    function test377() {
        assertEquals("÷ 11A8 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([4520,776,4448]));
    }
    function test378() {
        assertEquals("÷ 11A8 × 11A8 ÷", tr29.Tools.genBreaks([4520,4520]));
    }
    function test379() {
        assertEquals("÷ 11A8 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([4520,776,4520]));
    }
    function test380() {
        assertEquals("÷ 11A8 ÷ AC00 ÷", tr29.Tools.genBreaks([4520,44032]));
    }
    function test381() {
        assertEquals("÷ 11A8 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([4520,776,44032]));
    }
    function test382() {
        assertEquals("÷ 11A8 ÷ AC01 ÷", tr29.Tools.genBreaks([4520,44033]));
    }
    function test383() {
        assertEquals("÷ 11A8 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([4520,776,44033]));
    }
    function test384() {
        assertEquals("÷ 11A8 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([4520,127462]));
    }
    function test385() {
        assertEquals("÷ 11A8 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([4520,776,127462]));
    }
    function test386() {
        assertEquals("÷ 11A8 ÷ 261D ÷", tr29.Tools.genBreaks([4520,9757]));
    }
    function test387() {
        assertEquals("÷ 11A8 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([4520,776,9757]));
    }
    function test388() {
        assertEquals("÷ 11A8 ÷ 1F3FB ÷", tr29.Tools.genBreaks([4520,127995]));
    }
    function test389() {
        assertEquals("÷ 11A8 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([4520,776,127995]));
    }
    function test390() {
        assertEquals("÷ 11A8 × 200D ÷", tr29.Tools.genBreaks([4520,8205]));
    }
    function test391() {
        assertEquals("÷ 11A8 × 0308 × 200D ÷", tr29.Tools.genBreaks([4520,776,8205]));
    }
    function test392() {
        assertEquals("÷ 11A8 ÷ 2764 ÷", tr29.Tools.genBreaks([4520,10084]));
    }
    function test393() {
        assertEquals("÷ 11A8 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([4520,776,10084]));
    }
    function test394() {
        assertEquals("÷ 11A8 ÷ 1F466 ÷", tr29.Tools.genBreaks([4520,128102]));
    }
    function test395() {
        assertEquals("÷ 11A8 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([4520,776,128102]));
    }
    function test396() {
        assertEquals("÷ 11A8 ÷ 0378 ÷", tr29.Tools.genBreaks([4520,888]));
    }
    function test397() {
        assertEquals("÷ 11A8 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([4520,776,888]));
    }
    function test398() {
        assertEquals("÷ 11A8 ÷ D800 ÷", tr29.Tools.genBreaks([4520,55296]));
    }
    function test399() {
        assertEquals("÷ 11A8 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([4520,776,55296]));
    }
    function test400() {
        assertEquals("÷ AC00 ÷ 0020 ÷", tr29.Tools.genBreaks([44032,32]));
    }
    function test401() {
        assertEquals("÷ AC00 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([44032,776,32]));
    }
    function test402() {
        assertEquals("÷ AC00 ÷ 000D ÷", tr29.Tools.genBreaks([44032,13]));
    }
    function test403() {
        assertEquals("÷ AC00 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([44032,776,13]));
    }
    function test404() {
        assertEquals("÷ AC00 ÷ 000A ÷", tr29.Tools.genBreaks([44032,10]));
    }
    function test405() {
        assertEquals("÷ AC00 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([44032,776,10]));
    }
    function test406() {
        assertEquals("÷ AC00 ÷ 0001 ÷", tr29.Tools.genBreaks([44032,1]));
    }
    function test407() {
        assertEquals("÷ AC00 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([44032,776,1]));
    }
    function test408() {
        assertEquals("÷ AC00 × 0300 ÷", tr29.Tools.genBreaks([44032,768]));
    }
    function test409() {
        assertEquals("÷ AC00 × 0308 × 0300 ÷", tr29.Tools.genBreaks([44032,776,768]));
    }
    function test410() {
        assertEquals("÷ AC00 ÷ 0600 ÷", tr29.Tools.genBreaks([44032,1536]));
    }
    function test411() {
        assertEquals("÷ AC00 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([44032,776,1536]));
    }
    function test412() {
        assertEquals("÷ AC00 × 0903 ÷", tr29.Tools.genBreaks([44032,2307]));
    }
    function test413() {
        assertEquals("÷ AC00 × 0308 × 0903 ÷", tr29.Tools.genBreaks([44032,776,2307]));
    }
    function test414() {
        assertEquals("÷ AC00 ÷ 1100 ÷", tr29.Tools.genBreaks([44032,4352]));
    }
    function test415() {
        assertEquals("÷ AC00 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([44032,776,4352]));
    }
    function test416() {
        assertEquals("÷ AC00 × 1160 ÷", tr29.Tools.genBreaks([44032,4448]));
    }
    function test417() {
        assertEquals("÷ AC00 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([44032,776,4448]));
    }
    function test418() {
        assertEquals("÷ AC00 × 11A8 ÷", tr29.Tools.genBreaks([44032,4520]));
    }
    function test419() {
        assertEquals("÷ AC00 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([44032,776,4520]));
    }
    function test420() {
        assertEquals("÷ AC00 ÷ AC00 ÷", tr29.Tools.genBreaks([44032,44032]));
    }
    function test421() {
        assertEquals("÷ AC00 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([44032,776,44032]));
    }
    function test422() {
        assertEquals("÷ AC00 ÷ AC01 ÷", tr29.Tools.genBreaks([44032,44033]));
    }
    function test423() {
        assertEquals("÷ AC00 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([44032,776,44033]));
    }
    function test424() {
        assertEquals("÷ AC00 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([44032,127462]));
    }
    function test425() {
        assertEquals("÷ AC00 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([44032,776,127462]));
    }
    function test426() {
        assertEquals("÷ AC00 ÷ 261D ÷", tr29.Tools.genBreaks([44032,9757]));
    }
    function test427() {
        assertEquals("÷ AC00 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([44032,776,9757]));
    }
    function test428() {
        assertEquals("÷ AC00 ÷ 1F3FB ÷", tr29.Tools.genBreaks([44032,127995]));
    }
    function test429() {
        assertEquals("÷ AC00 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([44032,776,127995]));
    }
    function test430() {
        assertEquals("÷ AC00 × 200D ÷", tr29.Tools.genBreaks([44032,8205]));
    }
    function test431() {
        assertEquals("÷ AC00 × 0308 × 200D ÷", tr29.Tools.genBreaks([44032,776,8205]));
    }
    function test432() {
        assertEquals("÷ AC00 ÷ 2764 ÷", tr29.Tools.genBreaks([44032,10084]));
    }
    function test433() {
        assertEquals("÷ AC00 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([44032,776,10084]));
    }
    function test434() {
        assertEquals("÷ AC00 ÷ 1F466 ÷", tr29.Tools.genBreaks([44032,128102]));
    }
    function test435() {
        assertEquals("÷ AC00 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([44032,776,128102]));
    }
    function test436() {
        assertEquals("÷ AC00 ÷ 0378 ÷", tr29.Tools.genBreaks([44032,888]));
    }
    function test437() {
        assertEquals("÷ AC00 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([44032,776,888]));
    }
    function test438() {
        assertEquals("÷ AC00 ÷ D800 ÷", tr29.Tools.genBreaks([44032,55296]));
    }
    function test439() {
        assertEquals("÷ AC00 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([44032,776,55296]));
    }
    function test440() {
        assertEquals("÷ AC01 ÷ 0020 ÷", tr29.Tools.genBreaks([44033,32]));
    }
    function test441() {
        assertEquals("÷ AC01 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([44033,776,32]));
    }
    function test442() {
        assertEquals("÷ AC01 ÷ 000D ÷", tr29.Tools.genBreaks([44033,13]));
    }
    function test443() {
        assertEquals("÷ AC01 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([44033,776,13]));
    }
    function test444() {
        assertEquals("÷ AC01 ÷ 000A ÷", tr29.Tools.genBreaks([44033,10]));
    }
    function test445() {
        assertEquals("÷ AC01 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([44033,776,10]));
    }
    function test446() {
        assertEquals("÷ AC01 ÷ 0001 ÷", tr29.Tools.genBreaks([44033,1]));
    }
    function test447() {
        assertEquals("÷ AC01 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([44033,776,1]));
    }
    function test448() {
        assertEquals("÷ AC01 × 0300 ÷", tr29.Tools.genBreaks([44033,768]));
    }
    function test449() {
        assertEquals("÷ AC01 × 0308 × 0300 ÷", tr29.Tools.genBreaks([44033,776,768]));
    }
    function test450() {
        assertEquals("÷ AC01 ÷ 0600 ÷", tr29.Tools.genBreaks([44033,1536]));
    }
    function test451() {
        assertEquals("÷ AC01 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([44033,776,1536]));
    }
    function test452() {
        assertEquals("÷ AC01 × 0903 ÷", tr29.Tools.genBreaks([44033,2307]));
    }
    function test453() {
        assertEquals("÷ AC01 × 0308 × 0903 ÷", tr29.Tools.genBreaks([44033,776,2307]));
    }
    function test454() {
        assertEquals("÷ AC01 ÷ 1100 ÷", tr29.Tools.genBreaks([44033,4352]));
    }
    function test455() {
        assertEquals("÷ AC01 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([44033,776,4352]));
    }
    function test456() {
        assertEquals("÷ AC01 ÷ 1160 ÷", tr29.Tools.genBreaks([44033,4448]));
    }
    function test457() {
        assertEquals("÷ AC01 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([44033,776,4448]));
    }
    function test458() {
        assertEquals("÷ AC01 × 11A8 ÷", tr29.Tools.genBreaks([44033,4520]));
    }
    function test459() {
        assertEquals("÷ AC01 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([44033,776,4520]));
    }
    function test460() {
        assertEquals("÷ AC01 ÷ AC00 ÷", tr29.Tools.genBreaks([44033,44032]));
    }
    function test461() {
        assertEquals("÷ AC01 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([44033,776,44032]));
    }
    function test462() {
        assertEquals("÷ AC01 ÷ AC01 ÷", tr29.Tools.genBreaks([44033,44033]));
    }
    function test463() {
        assertEquals("÷ AC01 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([44033,776,44033]));
    }
    function test464() {
        assertEquals("÷ AC01 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([44033,127462]));
    }
    function test465() {
        assertEquals("÷ AC01 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([44033,776,127462]));
    }
    function test466() {
        assertEquals("÷ AC01 ÷ 261D ÷", tr29.Tools.genBreaks([44033,9757]));
    }
    function test467() {
        assertEquals("÷ AC01 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([44033,776,9757]));
    }
    function test468() {
        assertEquals("÷ AC01 ÷ 1F3FB ÷", tr29.Tools.genBreaks([44033,127995]));
    }
    function test469() {
        assertEquals("÷ AC01 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([44033,776,127995]));
    }
    function test470() {
        assertEquals("÷ AC01 × 200D ÷", tr29.Tools.genBreaks([44033,8205]));
    }
    function test471() {
        assertEquals("÷ AC01 × 0308 × 200D ÷", tr29.Tools.genBreaks([44033,776,8205]));
    }
    function test472() {
        assertEquals("÷ AC01 ÷ 2764 ÷", tr29.Tools.genBreaks([44033,10084]));
    }
    function test473() {
        assertEquals("÷ AC01 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([44033,776,10084]));
    }
    function test474() {
        assertEquals("÷ AC01 ÷ 1F466 ÷", tr29.Tools.genBreaks([44033,128102]));
    }
    function test475() {
        assertEquals("÷ AC01 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([44033,776,128102]));
    }
    function test476() {
        assertEquals("÷ AC01 ÷ 0378 ÷", tr29.Tools.genBreaks([44033,888]));
    }
    function test477() {
        assertEquals("÷ AC01 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([44033,776,888]));
    }
    function test478() {
        assertEquals("÷ AC01 ÷ D800 ÷", tr29.Tools.genBreaks([44033,55296]));
    }
    function test479() {
        assertEquals("÷ AC01 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([44033,776,55296]));
    }
    function test480() {
        assertEquals("÷ 1F1E6 ÷ 0020 ÷", tr29.Tools.genBreaks([127462,32]));
    }
    function test481() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([127462,776,32]));
    }
    function test482() {
        assertEquals("÷ 1F1E6 ÷ 000D ÷", tr29.Tools.genBreaks([127462,13]));
    }
    function test483() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([127462,776,13]));
    }
    function test484() {
        assertEquals("÷ 1F1E6 ÷ 000A ÷", tr29.Tools.genBreaks([127462,10]));
    }
    function test485() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([127462,776,10]));
    }
    function test486() {
        assertEquals("÷ 1F1E6 ÷ 0001 ÷", tr29.Tools.genBreaks([127462,1]));
    }
    function test487() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([127462,776,1]));
    }
    function test488() {
        assertEquals("÷ 1F1E6 × 0300 ÷", tr29.Tools.genBreaks([127462,768]));
    }
    function test489() {
        assertEquals("÷ 1F1E6 × 0308 × 0300 ÷", tr29.Tools.genBreaks([127462,776,768]));
    }
    function test490() {
        assertEquals("÷ 1F1E6 ÷ 0600 ÷", tr29.Tools.genBreaks([127462,1536]));
    }
    function test491() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([127462,776,1536]));
    }
    function test492() {
        assertEquals("÷ 1F1E6 × 0903 ÷", tr29.Tools.genBreaks([127462,2307]));
    }
    function test493() {
        assertEquals("÷ 1F1E6 × 0308 × 0903 ÷", tr29.Tools.genBreaks([127462,776,2307]));
    }
    function test494() {
        assertEquals("÷ 1F1E6 ÷ 1100 ÷", tr29.Tools.genBreaks([127462,4352]));
    }
    function test495() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([127462,776,4352]));
    }
    function test496() {
        assertEquals("÷ 1F1E6 ÷ 1160 ÷", tr29.Tools.genBreaks([127462,4448]));
    }
    function test497() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([127462,776,4448]));
    }
    function test498() {
        assertEquals("÷ 1F1E6 ÷ 11A8 ÷", tr29.Tools.genBreaks([127462,4520]));
    }
    function test499() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([127462,776,4520]));
    }
    function test500() {
        assertEquals("÷ 1F1E6 ÷ AC00 ÷", tr29.Tools.genBreaks([127462,44032]));
    }
    function test501() {
        assertEquals("÷ 1F1E6 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([127462,776,44032]));
    }
    function test502() {
        assertEquals("÷ 1F1E6 ÷ AC01 ÷", tr29.Tools.genBreaks([127462,44033]));
    }
    function test503() {
        assertEquals("÷ 1F1E6 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([127462,776,44033]));
    }
    function test504() {
        assertEquals("÷ 1F1E6 × 1F1E6 ÷", tr29.Tools.genBreaks([127462,127462]));
    }
    function test505() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([127462,776,127462]));
    }
    function test506() {
        assertEquals("÷ 1F1E6 ÷ 261D ÷", tr29.Tools.genBreaks([127462,9757]));
    }
    function test507() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([127462,776,9757]));
    }
    function test508() {
        assertEquals("÷ 1F1E6 ÷ 1F3FB ÷", tr29.Tools.genBreaks([127462,127995]));
    }
    function test509() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([127462,776,127995]));
    }
    function test510() {
        assertEquals("÷ 1F1E6 × 200D ÷", tr29.Tools.genBreaks([127462,8205]));
    }
    function test511() {
        assertEquals("÷ 1F1E6 × 0308 × 200D ÷", tr29.Tools.genBreaks([127462,776,8205]));
    }
    function test512() {
        assertEquals("÷ 1F1E6 ÷ 2764 ÷", tr29.Tools.genBreaks([127462,10084]));
    }
    function test513() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([127462,776,10084]));
    }
    function test514() {
        assertEquals("÷ 1F1E6 ÷ 1F466 ÷", tr29.Tools.genBreaks([127462,128102]));
    }
    function test515() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([127462,776,128102]));
    }
    function test516() {
        assertEquals("÷ 1F1E6 ÷ 0378 ÷", tr29.Tools.genBreaks([127462,888]));
    }
    function test517() {
        assertEquals("÷ 1F1E6 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([127462,776,888]));
    }
    function test518() {
        assertEquals("÷ 1F1E6 ÷ D800 ÷", tr29.Tools.genBreaks([127462,55296]));
    }
    function test519() {
        assertEquals("÷ 1F1E6 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([127462,776,55296]));
    }
    function test520() {
        assertEquals("÷ 261D ÷ 0020 ÷", tr29.Tools.genBreaks([9757,32]));
    }
    function test521() {
        assertEquals("÷ 261D × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([9757,776,32]));
    }
    function test522() {
        assertEquals("÷ 261D ÷ 000D ÷", tr29.Tools.genBreaks([9757,13]));
    }
    function test523() {
        assertEquals("÷ 261D × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([9757,776,13]));
    }
    function test524() {
        assertEquals("÷ 261D ÷ 000A ÷", tr29.Tools.genBreaks([9757,10]));
    }
    function test525() {
        assertEquals("÷ 261D × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([9757,776,10]));
    }
    function test526() {
        assertEquals("÷ 261D ÷ 0001 ÷", tr29.Tools.genBreaks([9757,1]));
    }
    function test527() {
        assertEquals("÷ 261D × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([9757,776,1]));
    }
    function test528() {
        assertEquals("÷ 261D × 0300 ÷", tr29.Tools.genBreaks([9757,768]));
    }
    function test529() {
        assertEquals("÷ 261D × 0308 × 0300 ÷", tr29.Tools.genBreaks([9757,776,768]));
    }
    function test530() {
        assertEquals("÷ 261D ÷ 0600 ÷", tr29.Tools.genBreaks([9757,1536]));
    }
    function test531() {
        assertEquals("÷ 261D × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([9757,776,1536]));
    }
    function test532() {
        assertEquals("÷ 261D × 0903 ÷", tr29.Tools.genBreaks([9757,2307]));
    }
    function test533() {
        assertEquals("÷ 261D × 0308 × 0903 ÷", tr29.Tools.genBreaks([9757,776,2307]));
    }
    function test534() {
        assertEquals("÷ 261D ÷ 1100 ÷", tr29.Tools.genBreaks([9757,4352]));
    }
    function test535() {
        assertEquals("÷ 261D × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([9757,776,4352]));
    }
    function test536() {
        assertEquals("÷ 261D ÷ 1160 ÷", tr29.Tools.genBreaks([9757,4448]));
    }
    function test537() {
        assertEquals("÷ 261D × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([9757,776,4448]));
    }
    function test538() {
        assertEquals("÷ 261D ÷ 11A8 ÷", tr29.Tools.genBreaks([9757,4520]));
    }
    function test539() {
        assertEquals("÷ 261D × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([9757,776,4520]));
    }
    function test540() {
        assertEquals("÷ 261D ÷ AC00 ÷", tr29.Tools.genBreaks([9757,44032]));
    }
    function test541() {
        assertEquals("÷ 261D × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([9757,776,44032]));
    }
    function test542() {
        assertEquals("÷ 261D ÷ AC01 ÷", tr29.Tools.genBreaks([9757,44033]));
    }
    function test543() {
        assertEquals("÷ 261D × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([9757,776,44033]));
    }
    function test544() {
        assertEquals("÷ 261D ÷ 1F1E6 ÷", tr29.Tools.genBreaks([9757,127462]));
    }
    function test545() {
        assertEquals("÷ 261D × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([9757,776,127462]));
    }
    function test546() {
        assertEquals("÷ 261D ÷ 261D ÷", tr29.Tools.genBreaks([9757,9757]));
    }
    function test547() {
        assertEquals("÷ 261D × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([9757,776,9757]));
    }
    function test548() {
        assertEquals("÷ 261D × 1F3FB ÷", tr29.Tools.genBreaks([9757,127995]));
    }
    function test549() {
        assertEquals("÷ 261D × 0308 × 1F3FB ÷", tr29.Tools.genBreaks([9757,776,127995]));
    }
    function test550() {
        assertEquals("÷ 261D × 200D ÷", tr29.Tools.genBreaks([9757,8205]));
    }
    function test551() {
        assertEquals("÷ 261D × 0308 × 200D ÷", tr29.Tools.genBreaks([9757,776,8205]));
    }
    function test552() {
        assertEquals("÷ 261D ÷ 2764 ÷", tr29.Tools.genBreaks([9757,10084]));
    }
    function test553() {
        assertEquals("÷ 261D × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([9757,776,10084]));
    }
    function test554() {
        assertEquals("÷ 261D ÷ 1F466 ÷", tr29.Tools.genBreaks([9757,128102]));
    }
    function test555() {
        assertEquals("÷ 261D × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([9757,776,128102]));
    }
    function test556() {
        assertEquals("÷ 261D ÷ 0378 ÷", tr29.Tools.genBreaks([9757,888]));
    }
    function test557() {
        assertEquals("÷ 261D × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([9757,776,888]));
    }
    function test558() {
        assertEquals("÷ 261D ÷ D800 ÷", tr29.Tools.genBreaks([9757,55296]));
    }
    function test559() {
        assertEquals("÷ 261D × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([9757,776,55296]));
    }
    function test560() {
        assertEquals("÷ 1F3FB ÷ 0020 ÷", tr29.Tools.genBreaks([127995,32]));
    }
    function test561() {
        assertEquals("÷ 1F3FB × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([127995,776,32]));
    }
    function test562() {
        assertEquals("÷ 1F3FB ÷ 000D ÷", tr29.Tools.genBreaks([127995,13]));
    }
    function test563() {
        assertEquals("÷ 1F3FB × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([127995,776,13]));
    }
    function test564() {
        assertEquals("÷ 1F3FB ÷ 000A ÷", tr29.Tools.genBreaks([127995,10]));
    }
    function test565() {
        assertEquals("÷ 1F3FB × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([127995,776,10]));
    }
    function test566() {
        assertEquals("÷ 1F3FB ÷ 0001 ÷", tr29.Tools.genBreaks([127995,1]));
    }
    function test567() {
        assertEquals("÷ 1F3FB × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([127995,776,1]));
    }
    function test568() {
        assertEquals("÷ 1F3FB × 0300 ÷", tr29.Tools.genBreaks([127995,768]));
    }
    function test569() {
        assertEquals("÷ 1F3FB × 0308 × 0300 ÷", tr29.Tools.genBreaks([127995,776,768]));
    }
    function test570() {
        assertEquals("÷ 1F3FB ÷ 0600 ÷", tr29.Tools.genBreaks([127995,1536]));
    }
    function test571() {
        assertEquals("÷ 1F3FB × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([127995,776,1536]));
    }
    function test572() {
        assertEquals("÷ 1F3FB × 0903 ÷", tr29.Tools.genBreaks([127995,2307]));
    }
    function test573() {
        assertEquals("÷ 1F3FB × 0308 × 0903 ÷", tr29.Tools.genBreaks([127995,776,2307]));
    }
    function test574() {
        assertEquals("÷ 1F3FB ÷ 1100 ÷", tr29.Tools.genBreaks([127995,4352]));
    }
    function test575() {
        assertEquals("÷ 1F3FB × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([127995,776,4352]));
    }
    function test576() {
        assertEquals("÷ 1F3FB ÷ 1160 ÷", tr29.Tools.genBreaks([127995,4448]));
    }
    function test577() {
        assertEquals("÷ 1F3FB × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([127995,776,4448]));
    }
    function test578() {
        assertEquals("÷ 1F3FB ÷ 11A8 ÷", tr29.Tools.genBreaks([127995,4520]));
    }
    function test579() {
        assertEquals("÷ 1F3FB × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([127995,776,4520]));
    }
    function test580() {
        assertEquals("÷ 1F3FB ÷ AC00 ÷", tr29.Tools.genBreaks([127995,44032]));
    }
    function test581() {
        assertEquals("÷ 1F3FB × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([127995,776,44032]));
    }
    function test582() {
        assertEquals("÷ 1F3FB ÷ AC01 ÷", tr29.Tools.genBreaks([127995,44033]));
    }
    function test583() {
        assertEquals("÷ 1F3FB × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([127995,776,44033]));
    }
    function test584() {
        assertEquals("÷ 1F3FB ÷ 1F1E6 ÷", tr29.Tools.genBreaks([127995,127462]));
    }
    function test585() {
        assertEquals("÷ 1F3FB × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([127995,776,127462]));
    }
    function test586() {
        assertEquals("÷ 1F3FB ÷ 261D ÷", tr29.Tools.genBreaks([127995,9757]));
    }
    function test587() {
        assertEquals("÷ 1F3FB × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([127995,776,9757]));
    }
    function test588() {
        assertEquals("÷ 1F3FB ÷ 1F3FB ÷", tr29.Tools.genBreaks([127995,127995]));
    }
    function test589() {
        assertEquals("÷ 1F3FB × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([127995,776,127995]));
    }
    function test590() {
        assertEquals("÷ 1F3FB × 200D ÷", tr29.Tools.genBreaks([127995,8205]));
    }
    function test591() {
        assertEquals("÷ 1F3FB × 0308 × 200D ÷", tr29.Tools.genBreaks([127995,776,8205]));
    }
    function test592() {
        assertEquals("÷ 1F3FB ÷ 2764 ÷", tr29.Tools.genBreaks([127995,10084]));
    }
    function test593() {
        assertEquals("÷ 1F3FB × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([127995,776,10084]));
    }
    function test594() {
        assertEquals("÷ 1F3FB ÷ 1F466 ÷", tr29.Tools.genBreaks([127995,128102]));
    }
    function test595() {
        assertEquals("÷ 1F3FB × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([127995,776,128102]));
    }
    function test596() {
        assertEquals("÷ 1F3FB ÷ 0378 ÷", tr29.Tools.genBreaks([127995,888]));
    }
    function test597() {
        assertEquals("÷ 1F3FB × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([127995,776,888]));
    }
    function test598() {
        assertEquals("÷ 1F3FB ÷ D800 ÷", tr29.Tools.genBreaks([127995,55296]));
    }
    function test599() {
        assertEquals("÷ 1F3FB × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([127995,776,55296]));
    }
    function test600() {
        assertEquals("÷ 200D ÷ 0020 ÷", tr29.Tools.genBreaks([8205,32]));
    }
    function test601() {
        assertEquals("÷ 200D × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([8205,776,32]));
    }
    function test602() {
        assertEquals("÷ 200D ÷ 000D ÷", tr29.Tools.genBreaks([8205,13]));
    }
    function test603() {
        assertEquals("÷ 200D × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([8205,776,13]));
    }
    function test604() {
        assertEquals("÷ 200D ÷ 000A ÷", tr29.Tools.genBreaks([8205,10]));
    }
    function test605() {
        assertEquals("÷ 200D × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([8205,776,10]));
    }
    function test606() {
        assertEquals("÷ 200D ÷ 0001 ÷", tr29.Tools.genBreaks([8205,1]));
    }
    function test607() {
        assertEquals("÷ 200D × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([8205,776,1]));
    }
    function test608() {
        assertEquals("÷ 200D × 0300 ÷", tr29.Tools.genBreaks([8205,768]));
    }
    function test609() {
        assertEquals("÷ 200D × 0308 × 0300 ÷", tr29.Tools.genBreaks([8205,776,768]));
    }
    function test610() {
        assertEquals("÷ 200D ÷ 0600 ÷", tr29.Tools.genBreaks([8205,1536]));
    }
    function test611() {
        assertEquals("÷ 200D × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([8205,776,1536]));
    }
    function test612() {
        assertEquals("÷ 200D × 0903 ÷", tr29.Tools.genBreaks([8205,2307]));
    }
    function test613() {
        assertEquals("÷ 200D × 0308 × 0903 ÷", tr29.Tools.genBreaks([8205,776,2307]));
    }
    function test614() {
        assertEquals("÷ 200D ÷ 1100 ÷", tr29.Tools.genBreaks([8205,4352]));
    }
    function test615() {
        assertEquals("÷ 200D × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([8205,776,4352]));
    }
    function test616() {
        assertEquals("÷ 200D ÷ 1160 ÷", tr29.Tools.genBreaks([8205,4448]));
    }
    function test617() {
        assertEquals("÷ 200D × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([8205,776,4448]));
    }
    function test618() {
        assertEquals("÷ 200D ÷ 11A8 ÷", tr29.Tools.genBreaks([8205,4520]));
    }
    function test619() {
        assertEquals("÷ 200D × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([8205,776,4520]));
    }
    function test620() {
        assertEquals("÷ 200D ÷ AC00 ÷", tr29.Tools.genBreaks([8205,44032]));
    }
    function test621() {
        assertEquals("÷ 200D × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([8205,776,44032]));
    }
    function test622() {
        assertEquals("÷ 200D ÷ AC01 ÷", tr29.Tools.genBreaks([8205,44033]));
    }
    function test623() {
        assertEquals("÷ 200D × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([8205,776,44033]));
    }
    function test624() {
        assertEquals("÷ 200D ÷ 1F1E6 ÷", tr29.Tools.genBreaks([8205,127462]));
    }
    function test625() {
        assertEquals("÷ 200D × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([8205,776,127462]));
    }
    function test626() {
        assertEquals("÷ 200D ÷ 261D ÷", tr29.Tools.genBreaks([8205,9757]));
    }
    function test627() {
        assertEquals("÷ 200D × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([8205,776,9757]));
    }
    function test628() {
        assertEquals("÷ 200D ÷ 1F3FB ÷", tr29.Tools.genBreaks([8205,127995]));
    }
    function test629() {
        assertEquals("÷ 200D × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([8205,776,127995]));
    }
    function test630() {
        assertEquals("÷ 200D × 200D ÷", tr29.Tools.genBreaks([8205,8205]));
    }
    function test631() {
        assertEquals("÷ 200D × 0308 × 200D ÷", tr29.Tools.genBreaks([8205,776,8205]));
    }
    function test632() {
        assertEquals("÷ 200D × 2764 ÷", tr29.Tools.genBreaks([8205,10084]));
    }
    function test633() {
        assertEquals("÷ 200D × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([8205,776,10084]));
    }
    function test634() {
        assertEquals("÷ 200D × 1F466 ÷", tr29.Tools.genBreaks([8205,128102]));
    }
    function test635() {
        assertEquals("÷ 200D × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([8205,776,128102]));
    }
    function test636() {
        assertEquals("÷ 200D ÷ 0378 ÷", tr29.Tools.genBreaks([8205,888]));
    }
    function test637() {
        assertEquals("÷ 200D × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([8205,776,888]));
    }
    function test638() {
        assertEquals("÷ 200D ÷ D800 ÷", tr29.Tools.genBreaks([8205,55296]));
    }
    function test639() {
        assertEquals("÷ 200D × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([8205,776,55296]));
    }
    function test640() {
        assertEquals("÷ 2764 ÷ 0020 ÷", tr29.Tools.genBreaks([10084,32]));
    }
    function test641() {
        assertEquals("÷ 2764 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([10084,776,32]));
    }
    function test642() {
        assertEquals("÷ 2764 ÷ 000D ÷", tr29.Tools.genBreaks([10084,13]));
    }
    function test643() {
        assertEquals("÷ 2764 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([10084,776,13]));
    }
    function test644() {
        assertEquals("÷ 2764 ÷ 000A ÷", tr29.Tools.genBreaks([10084,10]));
    }
    function test645() {
        assertEquals("÷ 2764 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([10084,776,10]));
    }
    function test646() {
        assertEquals("÷ 2764 ÷ 0001 ÷", tr29.Tools.genBreaks([10084,1]));
    }
    function test647() {
        assertEquals("÷ 2764 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([10084,776,1]));
    }
    function test648() {
        assertEquals("÷ 2764 × 0300 ÷", tr29.Tools.genBreaks([10084,768]));
    }
    function test649() {
        assertEquals("÷ 2764 × 0308 × 0300 ÷", tr29.Tools.genBreaks([10084,776,768]));
    }
    function test650() {
        assertEquals("÷ 2764 ÷ 0600 ÷", tr29.Tools.genBreaks([10084,1536]));
    }
    function test651() {
        assertEquals("÷ 2764 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([10084,776,1536]));
    }
    function test652() {
        assertEquals("÷ 2764 × 0903 ÷", tr29.Tools.genBreaks([10084,2307]));
    }
    function test653() {
        assertEquals("÷ 2764 × 0308 × 0903 ÷", tr29.Tools.genBreaks([10084,776,2307]));
    }
    function test654() {
        assertEquals("÷ 2764 ÷ 1100 ÷", tr29.Tools.genBreaks([10084,4352]));
    }
    function test655() {
        assertEquals("÷ 2764 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([10084,776,4352]));
    }
    function test656() {
        assertEquals("÷ 2764 ÷ 1160 ÷", tr29.Tools.genBreaks([10084,4448]));
    }
    function test657() {
        assertEquals("÷ 2764 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([10084,776,4448]));
    }
    function test658() {
        assertEquals("÷ 2764 ÷ 11A8 ÷", tr29.Tools.genBreaks([10084,4520]));
    }
    function test659() {
        assertEquals("÷ 2764 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([10084,776,4520]));
    }
    function test660() {
        assertEquals("÷ 2764 ÷ AC00 ÷", tr29.Tools.genBreaks([10084,44032]));
    }
    function test661() {
        assertEquals("÷ 2764 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([10084,776,44032]));
    }
    function test662() {
        assertEquals("÷ 2764 ÷ AC01 ÷", tr29.Tools.genBreaks([10084,44033]));
    }
    function test663() {
        assertEquals("÷ 2764 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([10084,776,44033]));
    }
    function test664() {
        assertEquals("÷ 2764 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([10084,127462]));
    }
    function test665() {
        assertEquals("÷ 2764 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([10084,776,127462]));
    }
    function test666() {
        assertEquals("÷ 2764 ÷ 261D ÷", tr29.Tools.genBreaks([10084,9757]));
    }
    function test667() {
        assertEquals("÷ 2764 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([10084,776,9757]));
    }
    function test668() {
        assertEquals("÷ 2764 ÷ 1F3FB ÷", tr29.Tools.genBreaks([10084,127995]));
    }
    function test669() {
        assertEquals("÷ 2764 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([10084,776,127995]));
    }
    function test670() {
        assertEquals("÷ 2764 × 200D ÷", tr29.Tools.genBreaks([10084,8205]));
    }
    function test671() {
        assertEquals("÷ 2764 × 0308 × 200D ÷", tr29.Tools.genBreaks([10084,776,8205]));
    }
    function test672() {
        assertEquals("÷ 2764 ÷ 2764 ÷", tr29.Tools.genBreaks([10084,10084]));
    }
    function test673() {
        assertEquals("÷ 2764 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([10084,776,10084]));
    }
    function test674() {
        assertEquals("÷ 2764 ÷ 1F466 ÷", tr29.Tools.genBreaks([10084,128102]));
    }
    function test675() {
        assertEquals("÷ 2764 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([10084,776,128102]));
    }
    function test676() {
        assertEquals("÷ 2764 ÷ 0378 ÷", tr29.Tools.genBreaks([10084,888]));
    }
    function test677() {
        assertEquals("÷ 2764 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([10084,776,888]));
    }
    function test678() {
        assertEquals("÷ 2764 ÷ D800 ÷", tr29.Tools.genBreaks([10084,55296]));
    }
    function test679() {
        assertEquals("÷ 2764 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([10084,776,55296]));
    }
    function test680() {
        assertEquals("÷ 1F466 ÷ 0020 ÷", tr29.Tools.genBreaks([128102,32]));
    }
    function test681() {
        assertEquals("÷ 1F466 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([128102,776,32]));
    }
    function test682() {
        assertEquals("÷ 1F466 ÷ 000D ÷", tr29.Tools.genBreaks([128102,13]));
    }
    function test683() {
        assertEquals("÷ 1F466 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([128102,776,13]));
    }
    function test684() {
        assertEquals("÷ 1F466 ÷ 000A ÷", tr29.Tools.genBreaks([128102,10]));
    }
    function test685() {
        assertEquals("÷ 1F466 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([128102,776,10]));
    }
    function test686() {
        assertEquals("÷ 1F466 ÷ 0001 ÷", tr29.Tools.genBreaks([128102,1]));
    }
    function test687() {
        assertEquals("÷ 1F466 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([128102,776,1]));
    }
    function test688() {
        assertEquals("÷ 1F466 × 0300 ÷", tr29.Tools.genBreaks([128102,768]));
    }
    function test689() {
        assertEquals("÷ 1F466 × 0308 × 0300 ÷", tr29.Tools.genBreaks([128102,776,768]));
    }
    function test690() {
        assertEquals("÷ 1F466 ÷ 0600 ÷", tr29.Tools.genBreaks([128102,1536]));
    }
    function test691() {
        assertEquals("÷ 1F466 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([128102,776,1536]));
    }
    function test692() {
        assertEquals("÷ 1F466 × 0903 ÷", tr29.Tools.genBreaks([128102,2307]));
    }
    function test693() {
        assertEquals("÷ 1F466 × 0308 × 0903 ÷", tr29.Tools.genBreaks([128102,776,2307]));
    }
    function test694() {
        assertEquals("÷ 1F466 ÷ 1100 ÷", tr29.Tools.genBreaks([128102,4352]));
    }
    function test695() {
        assertEquals("÷ 1F466 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([128102,776,4352]));
    }
    function test696() {
        assertEquals("÷ 1F466 ÷ 1160 ÷", tr29.Tools.genBreaks([128102,4448]));
    }
    function test697() {
        assertEquals("÷ 1F466 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([128102,776,4448]));
    }
    function test698() {
        assertEquals("÷ 1F466 ÷ 11A8 ÷", tr29.Tools.genBreaks([128102,4520]));
    }
    function test699() {
        assertEquals("÷ 1F466 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([128102,776,4520]));
    }
    function test700() {
        assertEquals("÷ 1F466 ÷ AC00 ÷", tr29.Tools.genBreaks([128102,44032]));
    }
    function test701() {
        assertEquals("÷ 1F466 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([128102,776,44032]));
    }
    function test702() {
        assertEquals("÷ 1F466 ÷ AC01 ÷", tr29.Tools.genBreaks([128102,44033]));
    }
    function test703() {
        assertEquals("÷ 1F466 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([128102,776,44033]));
    }
    function test704() {
        assertEquals("÷ 1F466 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([128102,127462]));
    }
    function test705() {
        assertEquals("÷ 1F466 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([128102,776,127462]));
    }
    function test706() {
        assertEquals("÷ 1F466 ÷ 261D ÷", tr29.Tools.genBreaks([128102,9757]));
    }
    function test707() {
        assertEquals("÷ 1F466 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([128102,776,9757]));
    }
    function test708() {
        assertEquals("÷ 1F466 × 1F3FB ÷", tr29.Tools.genBreaks([128102,127995]));
    }
    function test709() {
        assertEquals("÷ 1F466 × 0308 × 1F3FB ÷", tr29.Tools.genBreaks([128102,776,127995]));
    }
    function test710() {
        assertEquals("÷ 1F466 × 200D ÷", tr29.Tools.genBreaks([128102,8205]));
    }
    function test711() {
        assertEquals("÷ 1F466 × 0308 × 200D ÷", tr29.Tools.genBreaks([128102,776,8205]));
    }
    function test712() {
        assertEquals("÷ 1F466 ÷ 2764 ÷", tr29.Tools.genBreaks([128102,10084]));
    }
    function test713() {
        assertEquals("÷ 1F466 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([128102,776,10084]));
    }
    function test714() {
        assertEquals("÷ 1F466 ÷ 1F466 ÷", tr29.Tools.genBreaks([128102,128102]));
    }
    function test715() {
        assertEquals("÷ 1F466 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([128102,776,128102]));
    }
    function test716() {
        assertEquals("÷ 1F466 ÷ 0378 ÷", tr29.Tools.genBreaks([128102,888]));
    }
    function test717() {
        assertEquals("÷ 1F466 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([128102,776,888]));
    }
    function test718() {
        assertEquals("÷ 1F466 ÷ D800 ÷", tr29.Tools.genBreaks([128102,55296]));
    }
    function test719() {
        assertEquals("÷ 1F466 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([128102,776,55296]));
    }
    function test720() {
        assertEquals("÷ 0378 ÷ 0020 ÷", tr29.Tools.genBreaks([888,32]));
    }
    function test721() {
        assertEquals("÷ 0378 × 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([888,776,32]));
    }
    function test722() {
        assertEquals("÷ 0378 ÷ 000D ÷", tr29.Tools.genBreaks([888,13]));
    }
    function test723() {
        assertEquals("÷ 0378 × 0308 ÷ 000D ÷", tr29.Tools.genBreaks([888,776,13]));
    }
    function test724() {
        assertEquals("÷ 0378 ÷ 000A ÷", tr29.Tools.genBreaks([888,10]));
    }
    function test725() {
        assertEquals("÷ 0378 × 0308 ÷ 000A ÷", tr29.Tools.genBreaks([888,776,10]));
    }
    function test726() {
        assertEquals("÷ 0378 ÷ 0001 ÷", tr29.Tools.genBreaks([888,1]));
    }
    function test727() {
        assertEquals("÷ 0378 × 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([888,776,1]));
    }
    function test728() {
        assertEquals("÷ 0378 × 0300 ÷", tr29.Tools.genBreaks([888,768]));
    }
    function test729() {
        assertEquals("÷ 0378 × 0308 × 0300 ÷", tr29.Tools.genBreaks([888,776,768]));
    }
    function test730() {
        assertEquals("÷ 0378 ÷ 0600 ÷", tr29.Tools.genBreaks([888,1536]));
    }
    function test731() {
        assertEquals("÷ 0378 × 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([888,776,1536]));
    }
    function test732() {
        assertEquals("÷ 0378 × 0903 ÷", tr29.Tools.genBreaks([888,2307]));
    }
    function test733() {
        assertEquals("÷ 0378 × 0308 × 0903 ÷", tr29.Tools.genBreaks([888,776,2307]));
    }
    function test734() {
        assertEquals("÷ 0378 ÷ 1100 ÷", tr29.Tools.genBreaks([888,4352]));
    }
    function test735() {
        assertEquals("÷ 0378 × 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([888,776,4352]));
    }
    function test736() {
        assertEquals("÷ 0378 ÷ 1160 ÷", tr29.Tools.genBreaks([888,4448]));
    }
    function test737() {
        assertEquals("÷ 0378 × 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([888,776,4448]));
    }
    function test738() {
        assertEquals("÷ 0378 ÷ 11A8 ÷", tr29.Tools.genBreaks([888,4520]));
    }
    function test739() {
        assertEquals("÷ 0378 × 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([888,776,4520]));
    }
    function test740() {
        assertEquals("÷ 0378 ÷ AC00 ÷", tr29.Tools.genBreaks([888,44032]));
    }
    function test741() {
        assertEquals("÷ 0378 × 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([888,776,44032]));
    }
    function test742() {
        assertEquals("÷ 0378 ÷ AC01 ÷", tr29.Tools.genBreaks([888,44033]));
    }
    function test743() {
        assertEquals("÷ 0378 × 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([888,776,44033]));
    }
    function test744() {
        assertEquals("÷ 0378 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([888,127462]));
    }
    function test745() {
        assertEquals("÷ 0378 × 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([888,776,127462]));
    }
    function test746() {
        assertEquals("÷ 0378 ÷ 261D ÷", tr29.Tools.genBreaks([888,9757]));
    }
    function test747() {
        assertEquals("÷ 0378 × 0308 ÷ 261D ÷", tr29.Tools.genBreaks([888,776,9757]));
    }
    function test748() {
        assertEquals("÷ 0378 ÷ 1F3FB ÷", tr29.Tools.genBreaks([888,127995]));
    }
    function test749() {
        assertEquals("÷ 0378 × 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([888,776,127995]));
    }
    function test750() {
        assertEquals("÷ 0378 × 200D ÷", tr29.Tools.genBreaks([888,8205]));
    }
    function test751() {
        assertEquals("÷ 0378 × 0308 × 200D ÷", tr29.Tools.genBreaks([888,776,8205]));
    }
    function test752() {
        assertEquals("÷ 0378 ÷ 2764 ÷", tr29.Tools.genBreaks([888,10084]));
    }
    function test753() {
        assertEquals("÷ 0378 × 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([888,776,10084]));
    }
    function test754() {
        assertEquals("÷ 0378 ÷ 1F466 ÷", tr29.Tools.genBreaks([888,128102]));
    }
    function test755() {
        assertEquals("÷ 0378 × 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([888,776,128102]));
    }
    function test756() {
        assertEquals("÷ 0378 ÷ 0378 ÷", tr29.Tools.genBreaks([888,888]));
    }
    function test757() {
        assertEquals("÷ 0378 × 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([888,776,888]));
    }
    function test758() {
        assertEquals("÷ 0378 ÷ D800 ÷", tr29.Tools.genBreaks([888,55296]));
    }
    function test759() {
        assertEquals("÷ 0378 × 0308 ÷ D800 ÷", tr29.Tools.genBreaks([888,776,55296]));
    }
    function test760() {
        assertEquals("÷ D800 ÷ 0020 ÷", tr29.Tools.genBreaks([55296,32]));
    }
    function test761() {
        assertEquals("÷ D800 ÷ 0308 ÷ 0020 ÷", tr29.Tools.genBreaks([55296,776,32]));
    }
    function test762() {
        assertEquals("÷ D800 ÷ 000D ÷", tr29.Tools.genBreaks([55296,13]));
    }
    function test763() {
        assertEquals("÷ D800 ÷ 0308 ÷ 000D ÷", tr29.Tools.genBreaks([55296,776,13]));
    }
    function test764() {
        assertEquals("÷ D800 ÷ 000A ÷", tr29.Tools.genBreaks([55296,10]));
    }
    function test765() {
        assertEquals("÷ D800 ÷ 0308 ÷ 000A ÷", tr29.Tools.genBreaks([55296,776,10]));
    }
    function test766() {
        assertEquals("÷ D800 ÷ 0001 ÷", tr29.Tools.genBreaks([55296,1]));
    }
    function test767() {
        assertEquals("÷ D800 ÷ 0308 ÷ 0001 ÷", tr29.Tools.genBreaks([55296,776,1]));
    }
    function test768() {
        assertEquals("÷ D800 ÷ 0300 ÷", tr29.Tools.genBreaks([55296,768]));
    }
    function test769() {
        assertEquals("÷ D800 ÷ 0308 × 0300 ÷", tr29.Tools.genBreaks([55296,776,768]));
    }
    function test770() {
        assertEquals("÷ D800 ÷ 0600 ÷", tr29.Tools.genBreaks([55296,1536]));
    }
    function test771() {
        assertEquals("÷ D800 ÷ 0308 ÷ 0600 ÷", tr29.Tools.genBreaks([55296,776,1536]));
    }
    function test772() {
        assertEquals("÷ D800 ÷ 0903 ÷", tr29.Tools.genBreaks([55296,2307]));
    }
    function test773() {
        assertEquals("÷ D800 ÷ 0308 × 0903 ÷", tr29.Tools.genBreaks([55296,776,2307]));
    }
    function test774() {
        assertEquals("÷ D800 ÷ 1100 ÷", tr29.Tools.genBreaks([55296,4352]));
    }
    function test775() {
        assertEquals("÷ D800 ÷ 0308 ÷ 1100 ÷", tr29.Tools.genBreaks([55296,776,4352]));
    }
    function test776() {
        assertEquals("÷ D800 ÷ 1160 ÷", tr29.Tools.genBreaks([55296,4448]));
    }
    function test777() {
        assertEquals("÷ D800 ÷ 0308 ÷ 1160 ÷", tr29.Tools.genBreaks([55296,776,4448]));
    }
    function test778() {
        assertEquals("÷ D800 ÷ 11A8 ÷", tr29.Tools.genBreaks([55296,4520]));
    }
    function test779() {
        assertEquals("÷ D800 ÷ 0308 ÷ 11A8 ÷", tr29.Tools.genBreaks([55296,776,4520]));
    }
    function test780() {
        assertEquals("÷ D800 ÷ AC00 ÷", tr29.Tools.genBreaks([55296,44032]));
    }
    function test781() {
        assertEquals("÷ D800 ÷ 0308 ÷ AC00 ÷", tr29.Tools.genBreaks([55296,776,44032]));
    }
    function test782() {
        assertEquals("÷ D800 ÷ AC01 ÷", tr29.Tools.genBreaks([55296,44033]));
    }
    function test783() {
        assertEquals("÷ D800 ÷ 0308 ÷ AC01 ÷", tr29.Tools.genBreaks([55296,776,44033]));
    }
    function test784() {
        assertEquals("÷ D800 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([55296,127462]));
    }
    function test785() {
        assertEquals("÷ D800 ÷ 0308 ÷ 1F1E6 ÷", tr29.Tools.genBreaks([55296,776,127462]));
    }
    function test786() {
        assertEquals("÷ D800 ÷ 261D ÷", tr29.Tools.genBreaks([55296,9757]));
    }
    function test787() {
        assertEquals("÷ D800 ÷ 0308 ÷ 261D ÷", tr29.Tools.genBreaks([55296,776,9757]));
    }
    function test788() {
        assertEquals("÷ D800 ÷ 1F3FB ÷", tr29.Tools.genBreaks([55296,127995]));
    }
    function test789() {
        assertEquals("÷ D800 ÷ 0308 ÷ 1F3FB ÷", tr29.Tools.genBreaks([55296,776,127995]));
    }
    function test790() {
        assertEquals("÷ D800 ÷ 200D ÷", tr29.Tools.genBreaks([55296,8205]));
    }
    function test791() {
        assertEquals("÷ D800 ÷ 0308 × 200D ÷", tr29.Tools.genBreaks([55296,776,8205]));
    }
    function test792() {
        assertEquals("÷ D800 ÷ 2764 ÷", tr29.Tools.genBreaks([55296,10084]));
    }
    function test793() {
        assertEquals("÷ D800 ÷ 0308 ÷ 2764 ÷", tr29.Tools.genBreaks([55296,776,10084]));
    }
    function test794() {
        assertEquals("÷ D800 ÷ 1F466 ÷", tr29.Tools.genBreaks([55296,128102]));
    }
    function test795() {
        assertEquals("÷ D800 ÷ 0308 ÷ 1F466 ÷", tr29.Tools.genBreaks([55296,776,128102]));
    }
    function test796() {
        assertEquals("÷ D800 ÷ 0378 ÷", tr29.Tools.genBreaks([55296,888]));
    }
    function test797() {
        assertEquals("÷ D800 ÷ 0308 ÷ 0378 ÷", tr29.Tools.genBreaks([55296,776,888]));
    }
    function test798() {
        assertEquals("÷ D800 ÷ D800 ÷", tr29.Tools.genBreaks([55296,55296]));
    }
    function test799() {
        assertEquals("÷ D800 ÷ 0308 ÷ D800 ÷", tr29.Tools.genBreaks([55296,776,55296]));
    }
    function test800() {
        assertEquals("÷ 000D × 000A ÷ 0061 ÷ 000A ÷ 0308 ÷", tr29.Tools.genBreaks([13,10,97,10,776]));
    }
    function test801() {
        assertEquals("÷ 0061 × 0308 ÷", tr29.Tools.genBreaks([97,776]));
    }
    function test802() {
        assertEquals("÷ 0020 × 200D ÷ 0646 ÷", tr29.Tools.genBreaks([32,8205,1606]));
    }
    function test803() {
        assertEquals("÷ 0646 × 200D ÷ 0020 ÷", tr29.Tools.genBreaks([1606,8205,32]));
    }
    function test804() {
        assertEquals("÷ 1100 × 1100 ÷", tr29.Tools.genBreaks([4352,4352]));
    }
    function test805() {
        assertEquals("÷ AC00 × 11A8 ÷ 1100 ÷", tr29.Tools.genBreaks([44032,4520,4352]));
    }
    function test806() {
        assertEquals("÷ AC01 × 11A8 ÷ 1100 ÷", tr29.Tools.genBreaks([44033,4520,4352]));
    }
    function test807() {
        assertEquals("÷ 1F1E6 × 1F1E7 ÷ 1F1E8 ÷ 0062 ÷", tr29.Tools.genBreaks([127462,127463,127464,98]));
    }
    function test808() {
        assertEquals("÷ 0061 ÷ 1F1E6 × 1F1E7 ÷ 1F1E8 ÷ 0062 ÷", tr29.Tools.genBreaks([97,127462,127463,127464,98]));
    }
    function test809() {
        assertEquals("÷ 0061 ÷ 1F1E6 × 1F1E7 × 200D ÷ 1F1E8 ÷ 0062 ÷", tr29.Tools.genBreaks([97,127462,127463,8205,127464,98]));
    }
    function test810() {
        assertEquals("÷ 0061 ÷ 1F1E6 × 200D ÷ 1F1E7 × 1F1E8 ÷ 0062 ÷", tr29.Tools.genBreaks([97,127462,8205,127463,127464,98]));
    }
    function test811() {
        assertEquals("÷ 0061 ÷ 1F1E6 × 1F1E7 ÷ 1F1E8 × 1F1E9 ÷ 0062 ÷", tr29.Tools.genBreaks([97,127462,127463,127464,127465,98]));
    }
    function test812() {
        assertEquals("÷ 0061 × 200D ÷", tr29.Tools.genBreaks([97,8205]));
    }
    function test813() {
        assertEquals("÷ 0061 × 0308 ÷ 0062 ÷", tr29.Tools.genBreaks([97,776,98]));
    }
    function test814() {
        assertEquals("÷ 0061 × 0903 ÷ 0062 ÷", tr29.Tools.genBreaks([97,2307,98]));
    }
    function test815() {
        assertEquals("÷ 0061 ÷ 0600 × 0062 ÷", tr29.Tools.genBreaks([97,1536,98]));
    }
    function test816() {
        assertEquals("÷ 261D × 1F3FB ÷ 261D ÷", tr29.Tools.genBreaks([9757,127995,9757]));
    }
    function test817() {
        assertEquals("÷ 1F466 × 1F3FB ÷", tr29.Tools.genBreaks([128102,127995]));
    }
    function test818() {
        assertEquals("÷ 200D × 1F466 × 1F3FB ÷", tr29.Tools.genBreaks([8205,128102,127995]));
    }
    function test819() {
        assertEquals("÷ 200D × 2764 ÷", tr29.Tools.genBreaks([8205,10084]));
    }
    function test820() {
        assertEquals("÷ 200D × 1F466 ÷", tr29.Tools.genBreaks([8205,128102]));
    }
    function test821() {
        assertEquals("÷ 1F466 ÷ 1F466 ÷", tr29.Tools.genBreaks([128102,128102]));
    }
}
