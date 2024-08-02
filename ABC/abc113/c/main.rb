N, M = gets.split.map(&:to_i)
ary = Array.new(M){|i| [gets.split.map(&:to_i), i] }.sort
ans = []
M.times.with_index{|i|
  pf = ary.select{|a| a[0][0] == i + 1}
  pf.each_with_index{|c,i|
    ans << ["#{format("%06d", c[0][0])}#{format("%06d", i+1)}", c[1]]
  }
}
puts ans.sort_by{_2}.map(&:first)
# ans.sort_by{|a,b| b}.each{puts _1[0]}
