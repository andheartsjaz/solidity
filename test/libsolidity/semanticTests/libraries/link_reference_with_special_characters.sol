==== Source: c"o\n t\\r"act .sol ====
library L {
    function f() external {}
}
contract C {
    function nonZeroAddress() public view returns (bool) {
        return address(L) == address(0);
    }
}
// ====
// compileViaYul: also
// ----
// library: L
// nonZeroAddress() -> false
