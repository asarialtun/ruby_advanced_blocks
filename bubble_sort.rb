def bubble_sort(arr)
   swapped=true
   while swapped
        swapped=false
        for j in 0..arr.length-2 do
             if arr[j]>arr[j+1]
              arr[j], arr[j+1] = arr[j+1], arr[j]
             swapped=true
             end
        end
  end
  puts arr.inspect
  arr
end

bubble_sort([5,4,3,2,1,0])