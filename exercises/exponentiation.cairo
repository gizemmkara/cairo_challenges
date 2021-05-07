
# Implement the function f(x,n)=x^n using the recursion rule f(x,n+1)=f(x,n)⋅x.

%builtins output

from starkware.cairo.common.serialize import serialize_word
func pow (x,n) -> (res):
     if n==0:
        return(res=1)
     end
     let (res)=pow(x,n-1)
     return (res=res*x)
end

func main{output_ptr : felt*}():
     alloc_locals
     let(local x)=pow(5,3)
     serialize_word(x)
     return()
end
