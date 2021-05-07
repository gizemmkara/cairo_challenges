#Computes nth term of the Fibonacci sequence
#  n=0,1,2,3,4,5,6,7,8,9,10,11,12
#F_n=0,1,2,3,5,8,13,21,34,55,89,144,233,377

%builtins output
from starkware.cairo.common.serialize import serialize_word

func fib (n:felt) -> (res:felt):
      alloc_locals
      if n==0:
         return(res=0)
      end
      if n==1:
         return(res=1)
      end
      let(local first)=fib(n-1)
      let(local second)=fib(n-2)
      let res=first+second
      return(res)
end

func main{output_ptr:felt*}():
     
     let(res)=fib(6)
     assert res= 8
     serialize_word(res)
     return()
end
