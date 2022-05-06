class Anagrams
  def initialize(string1, string2)
    @string1 = string1.downcase
    @string2 = string2.downcase
    @vowels = 'aeiou'
  end

  def compare
    string1_array = @string1.chars.sort
    string2_array = @string2.chars.sort
    if ((@string1.count "#{@vowels}") > 0) && ((@string2.count "#{@vowels}") > 0)
      if string1_array == string2_array
        return "Look, an anagram!"
      else
        return "No anagram for you"
      end
    else
      return "you need to input actual words"  
    end
  end
end