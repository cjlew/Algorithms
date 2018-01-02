class Array

  def quick_sort
    return self if self.length <= 1

    pivot = [self.first]
    left = self[1..-1].select { |el| el < self.first }
    right = self[1..-1].select { |el| el >= self.first }

    quick_sort(left) + pivot + quick_sort(right)

  end

end
