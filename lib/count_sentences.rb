require 'pry'

class String

  attr_accessor :sentences_counted

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = ['!', '.','?']
    self.sentences_counted = self.split(Regexp.union(delimiters))
    self.sentences_counted = self.sentences_counted.reject { |each_entry_in_array| each_entry_in_array.empty? }
    self.sentences_counted.count
  end
end

