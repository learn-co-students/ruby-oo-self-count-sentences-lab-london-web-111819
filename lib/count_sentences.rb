require 'pry'

class String



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
    
      new_array = self.split(/[.?!]/).reject {|string| string.empty?}
      return new_array.length
    end
    # self.split(' ')= complex_string
    # complex_string.select do {|word|}
    #  word.self.sentence? 
  
    #complex_string.count {|word| word.self.sentence? || word.self.question? || word.self.exclamation || word.self.exclamation}
    #splited_words.count {|word| word.self.end_with(".") }

    #splited_sentence.count
   # splited_sentence.count{|word| word.end_with(".")||word.end_with("?") ||word.end_with("!")}
  
end

new_sentence = "bla bla / / ? b?la?"
p new_sentence.exclamation?
#binding.pry