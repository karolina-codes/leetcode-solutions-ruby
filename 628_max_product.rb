def maximum_product(nums) 
  max_three = nums[0..2].reduce(:*)
  return max_three if nums.length == 3

  nums.sort!
  product_of_min = nums[0] * nums[1]
  product_of_max = nums[-1] * nums[-2]

  nums[2..-1].each do |n|
    max_three = product_of_min * n if product_of_min * n > max_three
  end

  nums[0..-3].each do |n|
    max_three = product_of_max * n if product_of_max * n > max_three
  end

  max_three
end
