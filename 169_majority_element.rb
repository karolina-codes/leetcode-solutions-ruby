def majority_element(nums)
  bound = nums.length/2
  h = Hash.new(0)

  nums.each do |num|
    h[num] += 1

    if h[num] > bound
      puts h
      return num
    end
  end
end

