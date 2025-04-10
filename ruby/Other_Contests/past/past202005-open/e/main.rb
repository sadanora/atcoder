N, M, Q = gets.split.map(&:to_i)
m_arr = Array.new(N){[]}
M.times{
  u, v = gets.split.map{_1.to_i - 1}
  m_arr[u] << v
  m_arr[v] << u
}
c_arr = gets.split.map(&:to_i)
Q.times{
  t, x, y = gets.split.map(&:to_i)
  x -= 1
  puts c_arr[x]
  if t == 1
    m_arr[x].each{|v|
      c_arr[v] = c_arr[x]
    }
  else
    c_arr[x] = y
  end
}
