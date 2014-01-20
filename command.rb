require_relative './counter'

class Command

  def parse
    puts 'Type array size:'
    size = gets.chomp.to_i
    raise "Wrong input" unless size > 0 && size < 25
    puts "Type your words, one by one:"
    words = []
    until words.size == size
      words << gets.chomp
    end
    n_words = gets.chomp.to_i
    {:words => @words, :n_words => @n_words}
  end

  def execute
    puts Counter.new(parse).print_words
  end
end

