require 'pry'
require 'rspec'
require 'anagrams'

describe '#anagram?' do
  it('should return true if two inputted words are anagrams') do
    words = Anagrams.new("eat", "tea")
    expect(words.compare).to(eq(true))
  end
  it('should return true if two inputted words are anagrams even if in different cases') do
    words = Anagrams.new("eAt", "TeA")
    expect(words.compare).to(eq(true))
  end
end