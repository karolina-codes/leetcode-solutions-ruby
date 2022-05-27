def max_sub_array(arr)
  maxCurrent = arr[0]
  maxSub = arr[0]

  for i in arr[1..-1] do
    if i > maxCurrent + i
      maxCurrent = i
    else 
      maxCurrent = maxCurrent + i
    end

    if maxCurrent > maxSub
      maxSub = maxCurrent
    end
  end

  maxSub
end