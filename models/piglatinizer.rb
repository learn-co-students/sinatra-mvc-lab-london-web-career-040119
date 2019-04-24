class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u"]
    cons = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z']
    array = text.split(" ")
    array.map! do |word|
      if vowels.include?(word[0].downcase)
        word = word + "way"
      elsif cons.include?(word[0].downcase) && cons.include?(word[1]) && cons.include?(word[2])
        word = word + word[0] + word[1] + word[2] + "ay"
        word = word[3..-1]
      elsif cons.include?(word[0].downcase) && cons.include?(word[1])
        word = word + word[0] + word[1] + "ay"
        word = word[2..-1]
      else
        word = word + word[0] + "ay"
        word = word[1..-1]
      end
    end
    array.join(" ")
  end
end
