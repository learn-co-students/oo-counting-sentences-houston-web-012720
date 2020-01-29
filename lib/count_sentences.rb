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
    a = self.split('.')
    b = a.map {|x| x.split('?')}.flatten
    c = b.map {|x| x.split('!')}.flatten
    # c.length
    # why does it convert "This is too!!" to " This is too", ""
    c.reject! do |x|
      x == ''
    end
    # reject doesnt change the orginal c. reject! will return it with c changed in place
    c.length
  end
end


# par = String.new

# par = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

# split_par = par.count_sentences

# binding.pry
# 0