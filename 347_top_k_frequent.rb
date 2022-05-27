def top_k_frequent(nums, k)
    counter = Hash.new(0)
    result = []
    
    for n in nums do 
        counter[n] += 1
    end
    
    k.times do
        result << counter.key(counter.values.max)
        counter.delete(counter.key(counter.values.max))
    end
    
    result
end