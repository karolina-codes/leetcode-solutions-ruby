def group_anagrams(arr) 
  hash = {}

  arr.map do |word|
    hashkey = ''
    counter = Hash.new(0)

    word.chars.each do |char|
      counter[char] += 1
    end

    ('a'..'z').each do |letter|
      hashkey += "*#{letter},#{counter[letter]}" if counter.key?(letter)
    end

    hash[hashkey] = [] unless hash.key?(hashkey)
    hash[hashkey] << word
  end

  hash.values
end
