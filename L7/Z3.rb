def same23? (array)
  puts array.inspect

  if array.length != 5
    return false
  end

  counts = Hash.new(0)
  array.each { |lamb| counts[lamb] += 1 }
  vals = counts.keys
  if vals.length != 2
      return false
  end

  ele = vals[0]
  ele2 = vals[1]
  if (counts[ele] == 2 && counts[ele2] == 3) || (counts[ele] == 3 && counts[ele2] == 2)
    return true
  end

  return false

end

puts same23?(["a", "a", "a", "b", "b"])# => true // 3x "a" and 2x "b"
puts same23?(["a", "b", "c", "b", "c"])# => false // 1x "a", 2x "b" and 2x "c"
puts same23?(["a", "a", "a", "a", "a"])# => false // 5x "a"
