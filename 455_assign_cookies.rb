def find_content_children(greed, cookies)
  count = 0
  g = 0
  c = 0
    
  cookies.sort!
  greed.sort!
    
  loop do
    if c > cookies.length - 1 ||  g > greed.length - 1
      break
    end
        
    if greed[g] <= cookies[c]
      count += 1
      g += 1
      c += 1    
    else 
      c += 1 
    end 
  end
        
  count
end