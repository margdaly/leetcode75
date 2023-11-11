require 'spec_helper'

# Greatest Common Divisor of Strings

# For two strings s and t, we say "t divides s" 
# if and only if s = t + ... + t 
# (i.e., t is concatenated with itself one or more times).

describe 'Greatest Common Divisor of Strings #gcd_of_strings' do
  context 'string1 is divisable by string2' do
    it 'returns the largest string that divides both strings' do
      expect(gcd_of_strings('ABABAB', 'ABAB')).to eq('AB')
    end
    
    it 'returns string2 when string1 can only be divided once' do
      expect(gcd_of_strings('ABCABC', 'ABC')).to eq('ABC')
    end
  end
    
  context 'no common divisor is found' do
    it 'returns an empty string' do
      expect(gcd_of_strings('LEET', 'CODE')).to eq('')
    end
  end
end
