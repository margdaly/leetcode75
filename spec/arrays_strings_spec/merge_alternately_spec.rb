require 'spec_helper'

describe '#merge_alternately' do
  it 'merges letters in alternating order, starting with word1' do
    expect(merge_alternately('abc', 'xyz')).to eq('axbycz')
    expect(merge_alternately('xxx', 'ooo')).to eq('xoxoxo')
  end

  it 'appends the additional letters if a word is longer than other' do
    expect(merge_alternately('aa', 'bcus')).to eq('abacus')
    expect(merge_alternately('lo out', 'ok')).to eq('look out')
  end

  it 'handles empty strings' do
    expect(merge_alternately('', 'xyz')).to eq('xyz')
    expect(merge_alternately('abc', '')).to eq('abc')
  end
end
