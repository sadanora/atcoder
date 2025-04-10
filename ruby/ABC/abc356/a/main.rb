n, l, r = gets.split.map(&:to_i)
arr = (1..n).to_a
if l == 1 && r == n
  puts arr.reverse.join(' ')
  exit
end
arr[l - 1, r - l + 1] = arr[l - 1, r - l + 1].reverse
puts arr.join(' ')
