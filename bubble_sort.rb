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


def bubble_sort_by(array)
  switch = true
  while switch
    for i in (0...array.length-1)
    result = yield([array[i], array[i + 1]])
    if result > 0
      array[i], array[i + 1] = array[i + 1], array[i]
    else switch = false
    end
    end
  end
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
 end
