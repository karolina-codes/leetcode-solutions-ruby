def longest_common_prefix(arr)
    return arr[0] if arr.size == 1
    
    wordToCompare = arr.max {|x,y| x.size <=> y.size}
    h = Hash.new
    result = ''
    
    iOfLongest = arr.find_index(wordToCompare)
    
    length = wordToCompare.length

    length.times { |i|
      h[wordToCompare[0..i]] = true
    }

    commonPrefixes = []

    arr.each_with_index { |word, i|
      next if i == iOfLongest
      arrOfChars = word.chars 
      arrOfChars.each_with_index { |char, j|
        prefix = word[0..j]

        if h.has_key?(prefix)
          commonPrefixes << prefix
        end
      }
    }

    return result if commonPrefixes.empty? 
    
    counter = Hash.new(0)
    commonPrefixes.each { |prefix|
      counter[prefix] += 1
    }

    return result if counter.values.max != arr.size - 1 
    
    counter.select! { |k,v|
      v == counter.values.max
    }

    counter.keys.max  
end
