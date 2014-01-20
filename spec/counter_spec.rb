require './counter'

describe 'Counter' do
  context "given a string, a size and K most frequent terms" do
    it "should count occurrences of each word" do
      counter = Counter.new(6, ['Fi', 'Fee', 'Fi', 'Blah', 'Blah', 'Blah'], 2)
      counter.get_word_frequency
      expect(counter.print_words).to eq(['Blah', 'Fi'])
    end  

    it "should print words in order of their frequency" do
      counter = Counter.new(6, ['Fi', 'Fee', 'Fi', 'Blah', 'Blah', 'Blah'], 2)
      counter.get_word_frequency
      expect(counter.print_words).to eq(['Blah', 'Fi'])
    end

    it "should print words in lex order" do
      counter = Counter.new(14, ['Fee', 'Fi', 'Fo', 'Fum', 'Fee', 'Fo', 'Fee', 'Fee', 'Fo', 'Fi', 'Fi', 'Fo', 'Fum', 'Fee'], 3)
      counter.get_word_frequency
      expect(counter.print_words).to eq(['Fee', 'Fo', 'Fi'])
    end
  end
end