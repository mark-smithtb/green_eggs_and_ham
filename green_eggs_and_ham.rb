class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @no_punc = @text.gsub(/[.,!,?]/, "")
    @words_array = @no_punc.split(" ")
    @downcase_words  = @words_array.map {|word| word.downcase }

  end


  def word_count
    @words_array.count
  end

  def sorted_unique_words
  @downcase_words.uniq.sort
  end

  def number_of_words_shorter_than(length)
    @words_array.count {|word| word.length < length}
  end

  def longest_word
    @words_array.max_by {|word| word.length}
  end

  def frequency_of_unique_words
   word_count = @downcase_words.uniq.map {|word,count| [word, @downcase_words.count(word)]}
   word_count.to_h
  end

  def stanzas
    @text.split(/(?:\n){2}/)
  end

  def lines
    (@text.gsub(/(?:\n){2}/, "\n")).split(/\n/)
  end

  def punctuation
    @text.scan(/[.,!?-]/)
  end

  def most_frequent_line
    lines.max_by {|line| lines.count(line)}
  end

end
