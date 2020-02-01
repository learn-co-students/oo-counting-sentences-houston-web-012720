require 'pry'

class String

  def sentence?
    if self[length-1] == "."
      return true
    else
      false
    end
  end

  def question?
    if self[length-1] == "?"
      return true
    else
      false
    end

  end

  def exclamation?
    if self[length-1] == "!"
      return true
    else
      false
    end

  end

  def count_sentences
    char = self.split.select do |s|
      s.sentence? || s.question? || s.exclamation? 
    end
    char.count
  end 
  
  # binding.pry
end


