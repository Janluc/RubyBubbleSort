def bubble_sort(arr)
  lengthofArr = arr.length - 1;
  loop do 
    swap = false
     lengthofArr.times do |item|
        if arr[item] > arr[item + 1] 
          arr[item], arr[item + 1] = arr[item + 1], arr[item]
          swap = true
        end
      end
      break if not swap
  end   
  puts arr
end

bubble_sort([22, 25, 17, 5, 46, 1])

def bubble_sort_by(arr)
  value = yield(10, 11)
  puts "value is #{value}"
end


bubble_sort_by(arr) do |left, right|
  left- right
end