module Enumerable
    def my_each
      if block_given?
        for i in self
            yield i
        end
      else
        return self
      end
    end
    
     def my_each_with_index
      if block_given?
        for i in self
            yield i, self.index(i)
        end
      else
        return self
      end
     end
    
    def my_select
      arr = Array.new
      for i in self
        if (yield i)
          arr << i
        end
      end
      return arr
    end
    
    def my_all?
    	for i in self
    		i = yield i if block_given?
			  return false unless i
    	end
    	return true
    end

    def my_any?
    	for i in self
    		i = yield i if block_given?
    		return true if i
    	end
    	return false
    end

    def my_none?
    	for i in self
    		i = yield i if block_given?
    		return false if i
    	end
    	return true
    end

    def my_count (item=nil)
    	count=0

	    for i in self
	    	unless item
	    		count +=1
	    	else
	    		count += 1 if i==item
	    	end
	    end
	    return count
    end
    
    def my_map(&block)
      return self unless block_given?
      arr = Array.new
        for i in self
          i = yield i
          arr << i
        end  
      return arr
    end
    
    def my_inject(offset=nil)
      if block_given?
        offset ? sum=offset : sum=self[0]
        for i in self[1..-1]
          sum= yield sum,i
        end
      end
      return sum
    end
    
end

def multiply_els(array)
  result = array.my_inject{|sum,item| sum * item}
  return result
end
puts multiply_els([2,4,5])

my_proc = Proc.new{ |i| i *= 2 }
puts "if only a proc is provided the output is as follows"
puts [1,2,3].my_map(&my_proc).inspect 
puts "if only a block is provided the output is as follows"
puts [1,2,3].my_map {|i| i *= 3}.inspect
puts "the program won't compile if both proc and block is provided, so skipping this assignment"