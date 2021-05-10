# A simple program that computes x^3+23*x^2+45*x+67,x=100
#After the program ends, the value should be at [ap - 1].
#For this exercise, you may assume that the fp register is constant and initialized to the same value as ap.
#TODO: compute with 5 instructions.

func main():
    [ap] = 100; ap++
    [ap]=[ap-1]*[ap-1];ap++
    [ap]=[ap-1]*[ap-2];ap++
    [ap]=23;ap++
    [ap]=[ap-1]*[ap-3];ap++
    [ap]=[ap-1]+[ap-3];ap++
    [ap]=45;ap++
    [ap]=[ap-1]*[ap-7];ap++
    [ap]=[ap-1]+[ap-3];ap++
    [ap]=[ap-1]+67;ap++
    ret
end

#program output=1234567
