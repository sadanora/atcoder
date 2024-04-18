X, Y, N = gets.split.map(&:to_i)
cnt = N.divmod(3)
ans = X * 3 > Y ? cnt[0] * Y + cnt[1] * X : N * X
puts ans
