def two_sum(nums, target)
  h = Hash.new
  
  nums.each_with_index { |num, i|
      if h.has_key?(target - num) 
          return [h[target - num], i]
      else h[num] = i
      end
  }
end