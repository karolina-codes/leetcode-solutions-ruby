def plus_one(arr)
  if arr[-1] < 9
    arr[-1] += 1
    return arr
  end

  arr.reverse_each.with_index do |_num, i|
    i = arr.length - 1 - i

    if arr[i] == 9 && i != 0
      arr[i] = 0
      if arr[i - 1] + 1 <= 9
        arr[i - 1] += 1
        return arr
      end
    else
      arr[i] = 1
      arr.append(0)
    end
  end
end
