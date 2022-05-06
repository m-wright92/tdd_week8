class Anagrams
  def initialize(string1, string2)
    @string1 = string1.downcase
    @string2 = string2.downcase
  end

  def compare
    string1_array = @string1.chars.sort
    string2_array = @string2.chars.sort
    if string1_array == string2_array
      return true
    else
      return false
    end
  end
end