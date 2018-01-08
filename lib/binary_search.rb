def binary_search(array, target)
  left = 0
  right = array.length - 1

  while left <= right
    mid = (left + right) / 2
    probe = array[mid]

    return mid if probe == target

    right = mid - 1 if probe > target
    left = mid + 1 if probe < target
  end

  nil
end
