class PigLatinizer
  def initialize
    @vowels = %w[a e i o u]
  end

  def piglatinize(text)
    words = text.split(' ')
    pigwords = words.map do |word|
      if start_with_vowel?(word)
        "#{word}way"
      else
        word.split(/([aeiou].*)/).reverse.push('ay').join('')
      end
    end

    pigwords.join(' ')
  end

  def start_with_vowel?(word)
    @vowels.include?(word[0].downcase)
  end
end
