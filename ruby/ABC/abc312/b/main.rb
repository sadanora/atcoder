def check(s, i, j)
  (0..2).each do |ii|
    (0..2).each do |jj|
      return false if s[i + ii][j + jj] != '#'
    end
  end
  (6..8).each do |ii|
    (6..8).each do |jj|
      return false if s[i + ii][j + jj] != '#'
    end
  end

  (0..3).each do |ii|
    return false if s[i + ii][j + 3] != '.'
  end
  (0..3).each do |jj|
    return false if s[i + 3][j + jj] != '.'
  end

  (5..8).each do |ii|
    return false if s[i + ii][j + 5] != '.'
  end
  (5..8).each do |jj|
    return false if s[i + 5][j + jj] != '.'
  end

  true
end

n, m = gets.split.map(&:to_i)
s = n.times.map { gets.chomp.split('') }

(n - 8).times do |i|
  (m - 8).times do |j|
    puts "#{i + 1} #{j + 1}" if check(s, i, j)
  end
end
