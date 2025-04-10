arr = 8.times.map { gets.chomp.chars }
arr.each_with_index do |s, i|
  s.each do |c|
    if c == '#'
      arr[i] = s.map { _1 == '#' ? '#' : 'x' }
      break
    end
  end
end
puts arr.transpose.map { |s| s.include?('#') ? 0 : s.count('.') }.sum
