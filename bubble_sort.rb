
def bubble_sort(array)
  n = array.length
  p "Array to sort = #{array}"
  until n <= 1
    newn = 0
    array.each_with_index do |value, index|
      if (array[index + 1]).is_a?(Integer)
        if array[index] > array[index + 1] then array[index], array[index + 1] = array[index + 1], array[index]
          newn = index + 1
        end
      end
      n = newn
    end
  end
  p "Sorted array = #{array}"
  puts
end

bubble_sort([4, 3, 2, 1])

array = [4,3,78,2,0,2]
bubble_sort(array)

# ------------------------------------------------------------------------


def bubble_sort_by(array)
  puts "array before > #{array}"
  count = array.length
  while count > 1
    for n in 1...array.length 
      array[n - 1], array[n] = array[n], array[n - 1] if yield(array[n - 1], array[n]) >= 1
    end
    count -= 1
  end
  puts "array after > #{array}"
end

bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end
