def count_words (str)

  puts str
  words = str.scan(/[a-z ]/i).join.downcase.split

  result = Hash.new(0)
  words.each { |lamb| result[lamb] += 1 }
  return result

end

puts count_words("A man, a plan, a canal -- Panama")# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}