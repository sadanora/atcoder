h,w,n = gets.split.map(&:to_i)
a_arr = h.times.map{ gets.split.map(&:to_i) }
b_arr = n.times.map{ gets.to_i }
ans = []
a_arr.each do |as|
  c =  as.filter_map { |a| b_arr.include?(a)}.count
  ans << c
end
p ans.max
