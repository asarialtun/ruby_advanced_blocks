def bubble_sort_by(arr)
  swapped = true
  while swapped
    swapped=false
    for i in 0..arr.length-2 do
       if block_given?
        if yield(arr[i], arr[i+1])>0
            arr[i], arr[i+1] = arr[i+1], arr[i]
            swapped=true
        end #if yield
      else
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i] 
          swapped=true
        end
      end #if block_given?
    end #for
  end #while
  puts arr
  return arr
end

bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}
bubble_sort_by([8,1,4,3,7])