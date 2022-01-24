# frozen_string_literal: true

def sort_element(left_half, right_half)
  if left_half.empty?
    right_half.shift
  elsif right_half.empty?
    left_half.shift
  else
    left_half[0] < right_half[0] ? left_half.shift : right_half.shift
  end
end

def merge(left_half, right_half)
  sorted = []

  sorted << sort_element(left_half, right_half) until left_half.empty? && right_half.empty?

  sorted
end

def merge_sort(array)
  case array.count
  when 1 then array
  when 2 then merge([array[0]], [array[1]])
  else
    half = array.count / 2

    merge(merge_sort(array[0..(half - 1)]), merge_sort(array[half..(array.count - 1)]))
  end
end

p merge_sort([4, 5, 2, 1, 7, 8, 6, 3])
