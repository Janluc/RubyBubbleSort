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


arr = [49, 22, 1, 55, 104, 7]

bubble_sort(arr)

arr = ["hello", "hey", "hi"]

def bubble_sort_by(arr)
  lengthofArr = arr.length - 1;
  loop do 
    swap = false
     lengthofArr.times do |item|
      value = yield(arr[item], arr[item + 1])
        if value >= 1 
          arr[item], arr[item + 1] = arr[item + 1], arr[item]
          swap = true
        end
      end
      break if not swap
  end
  puts arr
end

bubble_sort_by(arr) do |left, right|
  left.length - right.length
end
