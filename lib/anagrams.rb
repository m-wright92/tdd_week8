class Anagrams
  def initialize(string1, string2)
    @string1 = string1.downcase.gsub((/\W/), '')
    @string2 = string2.downcase.gsub((/\W/), '')
    @vowels = 'aeiou'
  end

  def compare
    string1_array = @string1.chars.sort
    string2_array = @string2.chars.sort
    output = ''
    if ((@string1.count "#{@vowels}") > 0) && ((@string2.count "#{@vowels}") > 0)
      if string1_array == string2_array
        output = 'Oh hey, an anagram!'
      elsif(@string1.count @string2) == 0
        output = 'Looks like you found an antigram!'
      else
        output = 'No anagram for you'
      end
    else
      output = 'You need to input actual words'  
    end
    output
  end
end

