def glob_match(filenames, pattern)
  pattern = "^" + pattern + "$"
  pattern = pattern.gsub(/\*/, '.*')
  pattern = pattern.gsub(/\?/, '?')
  pattern = Regexp.new pattern
  matches = Array.new
  filenames.each { |f|
    if !((f =~ pattern).nil?)
      puts f
      matches = matches + [f]
    end
  }
  return matches
end

p glob_match(["part1.rb", "part2.rb","part2.rb~",".part3.rb.un~"], "*part*rb?*")