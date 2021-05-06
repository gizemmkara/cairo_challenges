# As you saw in the previous challenge, the operator '/' does not denote
# truncated (i.e., rounding down) integer division as in other programming
# languages. Instead, one can use library functions such as
# unsigned_div_rem().
#
# Note that unsigned_div_rem() does not work for negative numbers.

%builtins output range_check

# Import unsigned_div_rem() from the math module.
from starkware.cairo.common.math import unsigned_div_rem
from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*,range_check_ptr}():
    let (q, r) = unsigned_div_rem(value=12, div=3)
    # Output the quotient (12 // 3).
    assert [output_ptr] = q
    # Output the remainder (12 % 3).
    assert [output_ptr + 1] = r
    let (q, r) = unsigned_div_rem(value=13, div=5)
    assert [output_ptr+2] = q
    assert [output_ptr+3] = r
    let output_ptr = output_ptr + 4
    return ()
end
