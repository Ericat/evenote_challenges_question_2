class Counter

  attr_accessor :words

  def initialize(size, words, n_words)
    @size = size
    @words = words
    @n_words = n_words
  end

  def get_word_frequency
    words.inject(Hash.new(0)) {|frequency, word| 
                frequency[word] +=1
              frequency 
             }
  end

  def print_words
    order = get_word_frequency.sort_by {|key, value| value }.reverse
    order.map(&:first).take(@n_words)
  end

end


