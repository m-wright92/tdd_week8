require 'pry'
require 'rspec'
require 'anagrams'

describe '#anagram?' do
  it('should return affirmation if two inputted words are anagrams') do
    words = Anagrams.new('eat', 'tea')
    expect(words.compare).to(eq('Oh hey, an anagram!'))
  end
  it('should return rejection if two inputted words are not anagrams') do
    words = Anagrams.new('eat', 'east')
    expect(words.compare).to(eq('No anagram for you'))
  end
  it('should return true if two inputted words are anagrams even if in different cases') do
    words = Anagrams.new('eAt', 'TeA')
    expect(words.compare).to(eq('Oh hey, an anagram!'))
  end
  it('should check if inputs are words containing vowels before checking for anagrams') do
    words = Anagrams.new('twnk', 'bzrk')
    expect(words.compare).to(eq('You need to input actual words'))
  end
  it('should check if inputs are antigrams') do
    words = Anagrams.new('Bus', 'diG')
    expect(words.compare).to(eq('Looks like you found an antigram!'))
  end
  it('should work with multi word sentances') do
    words = Anagrams.new('The Morse Code', 'Here come dots!')
    expect(words.compare).to(eq('Oh hey, an anagram!'))
  end
end