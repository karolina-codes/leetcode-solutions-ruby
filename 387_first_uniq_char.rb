def first_uniq_char(s)
  arr = s.split('')
  h = Hash.new
    
  arr.each_with_index do |char, i|       
    if h.has_key?(char)
      h[char][1] += 1 
    else 
      h[char] = [i, 1]
    end    
  end
    
  h.each_value do |arr|
    if arr[1] == 1
      return arr[0]
    end
  end
    
  -1
end