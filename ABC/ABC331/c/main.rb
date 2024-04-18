N = gets.to_i
A = gets.split.map(&:to_i)
i = 0
D = A.map.with_index {|a, i|
  [i+1, a]
}.sort_by{|k, v| [-v, k]}.to_h.map{|k , v| [k, i += v]}.to_h
ans = []
s = 0
max = D.values.max
N.times{|i|
  p D[i]
  ans << (max - (D[i] || N ))
}
p ans
# D.sort_by{|k, v| [k, -v]}.each_with_index {|d, i|
#   val = A[i + 1]
#   ans << A[val]

# }

# sorted_A = A.sort
# i = 0
# sum = sorted_A.map{i += _1}



# ans = []
# N.times{|i|
#   v = A[i]
#   idx = sorted_A.bsearch_index {_1 > v} || N
#   ans << sum[N - 1] - sum[idx - 1]
# }

# puts ans.join(' ')

# A = gets.split.map(&:to_i).map.with_index {|a, i|
#   [i+1, a]
# }.to_h
# ans = []
# A.each {|a|
#   ans << A.select{|k,v| v > a[1]}.values.sum
# }
# puts ans.join(' ')
