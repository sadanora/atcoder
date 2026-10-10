n = gets.chomp
ans = 0
(1 << n.size).times do |mask|
  unset_digits = []
  set_digits = []

  n.size.times do |shift|
    if (mask >> shift & 1).zero?
      unset_digits << n[shift]
    else
      set_digits << n[shift]
    end
  end

  next if unset_digits.empty? || set_digits.empty?

  x = unset_digits.sort.reverse.join.to_i
  y = set_digits.sort.reverse.join.to_i
  ans = [x * y, ans].max
end
p ans
