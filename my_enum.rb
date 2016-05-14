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
    
end