def palindrome? (str)

  puts str
  result = str.scan(/[a-z]/i).join.downcase

  if result == result.reverse
    return true
  end
  return false

end

puts palindrome?("A man, a plan, a canal -- Panama") #=> true
puts palindrome?("Madam, I'm Adam!") # => true
puts palindrome?("Abracadabra") # => false
puts palindrome?("") # => true