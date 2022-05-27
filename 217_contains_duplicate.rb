def contains_duplicate(nums)
  s = Set.new
    
  for n in nums do
    if s.add?(n) == nil
      return true
    end
    
    s.add(n)
  end    

  false
end