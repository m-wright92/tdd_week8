class Anagrams
  def initialize(string1, string2)
    @string1 = string1.downcase
    @string2 = string2.downcase
    @vowels = 'aeiou'
  end

  def compare
    string1_array = @string1.chars.sort
    string2_array = @string2.chars.sort
    s1_array_no_punc = string1_array.delete(/^\a-z\A-Z\d\s/)
    # non_letters = /\d\s/
    if ((@string1.count "#{@vowels}") > 0) && ((@string2.count "#{@vowels}") > 0)
      if string1_array == string2_array
        # binding.pry
        return "Look, an anagram!"
      elsif(@string1.count @string2) == 0
        return "Looks like you found and antigram!"
      else
        return "No anagram for you"
      end
    else
      return "you need to input actual words"  
    end
  end
end