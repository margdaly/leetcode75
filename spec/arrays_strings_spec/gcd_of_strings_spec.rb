require 'spec_helper'

describe '#gcd_of_strings' do
  it 'returns the largest string that divides both strings' do
    expect(gcd_of_strings("ABCABC", "ABC")).to eq("ABC")
    expect(gcd_of_strings("ABABAB", "ABAB")).to eq("AB")
    expect(gcd_of_strings("LEET", "CODE")).to eq("")
  end
end
