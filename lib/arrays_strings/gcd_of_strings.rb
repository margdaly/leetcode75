# Greatest Common Divisor of Strings

# For two strings s and t, we say "t divides s" 
# if and only if s = t + ... + t 
# (i.e., t is concatenated with itself one or more times).

# Given two strings str1 and str2, 
# return the largest string x such that x divides both str1 and str2.

def gcd_of_strings(str1, str2)
  if !str1.include?(str2)
    return "" 
  else
    return str2
  end
end

# expect(gcd_of_strings("ABABAB", "ABAB")).to eq("AB")

# PASSING
# expect(gcd_of_strings("LEET", "CODE")).to eq("")
# expect(gcd_of_strings("ABCABC", "ABC")).to eq("ABC")
