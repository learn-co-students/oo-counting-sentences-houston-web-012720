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
    new1 = self.split('.')
    new2 = new1.collect{|i| i.split('?')}.flatten
    new3 = new2.collect{|i| i.split('!')}.flatten.compact.reject{|i| i.length < 1}.count
    #   if newthing.length
  end
end

# eyyy = ("This, well, is a sentence. This is too!! And so is this, I think? Woo...")

# binding.pry
0