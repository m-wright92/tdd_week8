class Anagrams
  def initialize(string1, string2)
    @string1 = string1.downcase.gsub((/\W/), '')
    @string2 = string2.downcase.gsub((/\W/), '')
    @vowels = 'aeiou'
    # @non_chars = /[a-z][A-Z]\d\s/
  end

  def compare
    string1_array = @string1.chars.sort
    string2_array = @string2.chars.sort
    # string1_array.delete_if {|letter| (letter).include?("/\w/")}
    # string2_array.delete_if {|letter| (letter).include?("/\w/")}
    # binding.pry 
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

