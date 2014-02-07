def count_words(string)
  words = string.split()
  poop = Hash.new
  words.each { |w|
    w = w.downcase()
    if poop[w]
      poop[w] = poop[w] + 1
    else poop[w] = 1
    end
  }
  return poop

end

puts "A man, a plan, a canal -- Panama #=> "
puts count_words("A man, a plan, a canal -- Panama")

puts "Doo bee doo bee doo #=> "
puts count_words("Doo bee doo bee doo")
