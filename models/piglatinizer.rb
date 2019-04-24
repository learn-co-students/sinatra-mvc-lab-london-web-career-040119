class PigLatinizer
  def piglatinize(text)
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
    array = text.split(" ")

    array.map! do |word|
      if vowels.include?(word[0].downcase)
        word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1]) && consonants.include?(word[2])
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0].downcase)
        word[1..-1] + word[0] + 'ay'
      else
        word # return unchanged
      end
    end
    array.join(" ")
  end
end
