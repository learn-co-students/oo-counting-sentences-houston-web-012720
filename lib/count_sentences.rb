require 'pry'

class String

  def sentence?
    self[self.length-1]=="."
  end

  def question?
    self[self.length-1]=="?"
  end

  def exclamation?
    self[self.length-1]=="!"
  end

  def count_sentences
    arr = self.split("")
    arr.each_with_index { |elem, ind|
      if elem == arr[ind+1] || elem == arr[ind-1]
        arr.delete_at(ind)
        ind -= 1
      end
    }

    arr.reduce(0) { |count, element|
      
      if element == "." || element == "!" || element == "?"
        count += 1
      end
      count
    }
  end
end

