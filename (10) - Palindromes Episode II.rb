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

class Array
  def palindrome?
    reverse = self.reverse()
    if self == reverse
      return true
    else
      return false
    end
  end
end

class Hash
  def palindrome?
  end
end

print "A man, a plan, a canal -- Panama #=> " 
puts "A man, a plan, a canal -- Panama".palindrome?

print "Madam, I'm Adam! #=> " 
puts "Madam, I'm Adam!".palindrome?

print "Abracadabra #=> " 
puts "Abracadabra".palindrome?

print "['1','21','3','21','1'] #=>"
puts ['1','21','3','21','1'].palindrome?
  
print "['1','2','3','4','5'] #=>"
puts ['1','2','3','4','5'].palindrome?
#HOWWWWWWWWWWWWWWWWWWWWWW do I implement it for arrays :X
