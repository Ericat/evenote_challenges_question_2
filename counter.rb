class Counter

  attr_accessor :words

  def initialize(input)
    @words = input[:words]
    @n_words = input[:n_words]
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

# puts 'Type array size:'
# size = gets.chomp.to_i
# puts "Type your words, one by one:"
# words = []
# until words.size == size
#   words << gets.chomp
# end
# puts "How many terms do you want back?"
# n_words = gets.chomp.to_i
# hash = {:words => words, :n_words => n_words}
# puts Counter.new(hash).print_words


