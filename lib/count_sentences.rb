require 'pry'

class String

  def sentence?
    !!(self =~ /\.$/)? true : false 
  end

  def question?
    !!(self =~ /\?$/)? true : false 
  end

  def exclamation?
    !!(self =~ /\!$/)? true : false 
  end

  def count_sentences
    self.split(/\.|\?|\!+/).length
  end
end