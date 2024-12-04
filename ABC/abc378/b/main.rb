n = gets.to_i
q_arr, r_arr = n.times.map { gets.split.map(&:to_i) }.transpose
q = gets.to_i
q.times do |td, i|
  t, d = gets.split.map(&:to_i)
  t -= 1
  d -= r_arr[t]
  ans = (d+q_arr[t]-1)/q_arr[t]*q_arr[t] + r_arr[t]
  puts ans
end
