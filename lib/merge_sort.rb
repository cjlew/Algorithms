def merge_sort(arr)
  return arr if arr.length <= 1
  
  midpoint = arr.length / 2

  left = arr.take(midpoint).merge_sort
  right = arr.drop(midpoint).merge_sort

  merge(left, right)
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted.concat(left).concat(right)
end
