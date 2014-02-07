class String
  def palindrome?
    string = self.gsub(/(\W|\d)/, "")
    firstHalf =  string[0,string.length/2]
    secondHalf = firstHalf.reverse()
    if (string =~ /#{Regexp.quote(firstHalf)}\w?#{Regexp.quote(secondHalf)}/i).nil?
      return false
    else
      return true
    end
  end
end

print "A man, a plan, a canal -- Panama #=> " 
puts "A man, a plan, a canal -- Panama".palindrome?

print "Madam, I'm Adam! #=> " 
puts "Madam, I'm Adam!".palindrome?

print "Abracadabra #=> " 
puts "Abracadabra".palindrome?

#HOWWWWWWWWWWWWWWWWWWWWWW do I implement it for arrays :X
