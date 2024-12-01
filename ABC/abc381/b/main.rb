def func(s)
  return false if s.size.odd? || s.chars.tally.values.uniq != [2]
  (s.size/2).times do |i|
    next if s[2*i+1] == s[2*i]
    return false
  end

  true
end

s = gets.chomp
puts func(s) ? 'Yes' : 'No'
