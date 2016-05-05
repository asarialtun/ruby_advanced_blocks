def bubble_sort_by(arr)
  swapped = true
  while swapped
    swapped=false
    for i in 0..arr.length-2
        if yield(arr[i], arr[i+1])>0
            arr[i], arr[i+1] = arr[i+1], arr[i]
            swapped=true
        end
    end
  end
  puts arr
  return arr
end


bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}
bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}
bubble_sort_by([8,1,4,3,7])

=begin
def test
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}
=end