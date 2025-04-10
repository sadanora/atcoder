n, m = gets.split.map(&:to_i)
ary = Array.new(n+1){[]}
m.times do |i|
  p, y = gets.split.map(&:to_i)
  ary[p] << [y, i]
end
ans = []
ary.each_with_index do |pref, i|
  pref.sort_by { _1[0] }.each_with_index do |c, j|
    ans[c[1]] = "#{i.to_s.rjust(6, '0')}#{(j+1).to_s.rjust(6, '0')}"
  end
end
puts ans
