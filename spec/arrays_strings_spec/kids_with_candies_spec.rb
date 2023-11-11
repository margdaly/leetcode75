require 'spec_helper'

# Kids With the Greatest Number of Candies

describe 'Kids With the Greatest Number of Candies #kids_with_candies' do
  it 'returns a boolean array where each element is true if the kid has the greatest number of candies' do
    expect(kids_with_candies([2,3,5,1,3], 3)).to eq([true,true,true,false,true])
    # Explanation: If you give all extraCandies to:
    # - Kid 1, they will have 2 + 3 = 5 candies, which is the greatest among the kids.
    # - Kid 2, they will have 3 + 3 = 6 candies, which is the greatest among the kids.
    # - Kid 3, they will have 5 + 3 = 8 candies, which is the greatest among the kids.
    # - Kid 4, they will have 1 + 3 = 4 candies, which is not the greatest among the kids.
    # - Kid 5, they will have 3 + 3 = 6 candies, which is the greatest among the kids.
    
    expect(kids_with_candies([4,2,1,1,2], 1)).to eq([true,false,false,false,false])
    # Explanation: There is only 1 extra candy.
    # - Kid 1 will always have the greatest number of candies, even if a different kid is given the extra candy.

    expect(kids_with_candies([12,1,12], 10)).to eq([true,false,true])
  end
end
