def search(nums, target)
  l = 0
  r = nums.length - 1
    
  while l <= r
    mid = (l+r)/2 
    if nums[mid] > target
      r = mid - 1
    elsif nums[mid] < target
      l = mid + 1 
    else 
      return mid
    end
  end
  
   -1 
end