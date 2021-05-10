# arr + 0, arr + 1, ..., arr + (size - 1).
# Write a function that computes the product of all the even entries 
#of an array ([arr] * [arr + 2] * ...). You may assume that the length is even

%builtins output

from starkware.cairo.common.alloc import alloc
from starkware.cairo.common.serialize import serialize_word

func array_product(arr : felt*, size) -> (product):
    if size == 0:
        return (product=1)
    end
    # size is not zero.
    let (product_of_rest) = array_product(arr=arr + 2, size=size - 2)
    return (product=[arr]*product_of_rest)
end
func main{output_ptr : felt*}():
    const ARRAY_SIZE = 6
    # Allocate an array.
    let (ptr) = alloc()
    # Populate some values in the array.
    assert [ptr] = 2
    assert [ptr + 1] = 16
    assert [ptr+2] = 4
    assert [ptr+3] = 5
    assert [ptr+4] = 31
    assert [ptr+5] = 7
    # Call array_product to compute the product of the even entries elements.
    let (product) = array_product(arr=ptr, size=ARRAY_SIZE)
    # Write the product to the program output.
    serialize_word(product)
    return ()
end
    
     
