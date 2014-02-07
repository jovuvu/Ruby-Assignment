def combine_anagrams(words)
  anagrams = Hash.new
  words.each { |w|
    w = w.downcase()
    if anagrams[w.chars.sort.join]
      anagrams[w.chars.sort.join] = anagrams[w.chars.sort.join] + [w]
    else
      anagrams[w.chars.sort.join] = [w]
    end
  }
  return anagrams
end

anagrams = combine_anagrams(["cars", "for", "potatoes", "racs", "four", "scar", "creams", "scream"])
anagrams.each do |keys, values|
  p values
end