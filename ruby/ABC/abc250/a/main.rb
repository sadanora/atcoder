h, w = gets.split.map(&:to_i)
r, c = gets.split.map(&:to_i)
# arr = Array.new(h) { [1]*w }.map { _1.unshift(0); _1.push(0) }
#                             .unshift([0]*(w+2))
#                             .push([0]*(w+2))
# ans = 0
# ans += arr[r][c-1]
# ans += arr[r][c+1]
# ans += arr[r-1][c]
# ans += arr[r+1][c]
# puts ans

ans = 0
ans += 1 if r != 1
ans += 1 if r != h
ans += 1 if c != 1
ans += 1 if c != w
puts ans
