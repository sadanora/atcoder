N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
min_diff = 10**9
ans = 0
H.each_with_index {|h, i|
  diff = (A - (T - (h * 0.006))).abs
  if diff < min_diff
    ans = i
    min_diff = diff
  end
}
puts ans + 1
