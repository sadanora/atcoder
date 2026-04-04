n = gets.to_i
abs = n.times.map do
  a, b = gets.split.map(&:to_i)
  [a, b-1]
end
m = gets.to_i
ss = m.times.map { gets.chomp }
# 必要な階層がなければ作成するようデフォルト値を設定
hash = Hash.new { |h1, k1| h1[k1] = Hash.new { |h2, k2| h2[k2] = Set.new } }
ss.each do |s|
  len = s.size
  s.chars.each_with_index do |c, idx|
    hash[len][idx] << c
  end
end

ss.each do |s|
  if s.size != n
    puts "No"
    next
  end

  ok = true
  n.times do |i|
    target_char = s[i]
    ai, bi = abs[i]

    unless hash[ai][bi].include?(target_char)
      ok = false
      break
    end
  end
  puts ok ? "Yes" : "No"
end

