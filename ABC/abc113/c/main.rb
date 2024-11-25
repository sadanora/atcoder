n, m = gets.split.map(&:to_i)
ary = m.times.map { [gets.split.map(&:to_i), _1] }.sort
ans = []
m.times.map do |i|
  pf = ary.select { _1[0][0] == i + 1 }
  pf.each_with_index { |c,i|
    ans << ["#{c[0][0].to_s.rjust(6, '0')}#{(i+1).to_s.rjust(6, '0')}", c[1]]
  }
end
puts ans.sort_by{_2}.map { _1[0] }
