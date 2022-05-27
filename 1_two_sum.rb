def two_sum(arr)
  target = arr.shift
  results = []

  arr.each_with_index do |num1, i|
    arr.each_with_index do |num2, j|
      next if j <= i

      results << [num1, ',', num2, ' '] if num1 + num2 == target
    end
  end

  results.empty? ? -1 : results.join
end
