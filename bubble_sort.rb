test = [3, 18, 17, 28, 2]

def bubble_sort(array)
  arr = array.length

  loop do
    action = false
    (arr-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        action = true
      end
  end

    break if not action
  end

  return array
end
