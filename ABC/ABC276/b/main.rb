n, m = gets.split.map(&:to_i)
arr = Array.new(n){[]}
m.times {
  a, b = gets.split.map(&:to_i)
  arr[a-1] << b
  arr[b-1] << a
}
puts arr.map { _1.sort.unshift(_1.size).join(' ') }
