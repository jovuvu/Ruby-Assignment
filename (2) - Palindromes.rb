# Part 2: Palindromes

def palindrome?(string)
  string = string.gsub(/(\W|\d)/, "")
  firstHalf =  string[0,string.length/2]
  secondHalf = firstHalf.reverse()
  if (string =~ /#{Regexp.quote(firstHalf)}\w?#{Regexp.quote(secondHalf)}/i).nil?
    return false
  else
    return true
  end
end

print "A man, a plan, a canal -- Panama #=> " 
puts palindrome?("A man, a plan, a canal -- Panama")

print "Madam, I'm Adam! #=> " 
puts palindrome?("Madam, I'm Adam!")

print "Abracadabra #=> " 
puts palindrome?("Abracadabra")

