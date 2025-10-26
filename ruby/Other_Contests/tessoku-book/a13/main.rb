n, k = gets.split.map(&:to_i)
arr = [0] + gets.split.map(&:to_i)
r = [0]*(10**5)
ans = 0
(1..n-1).each do |i|
  if i == 1
    r[i] += 1
  else
    r[i] = r[i-1]
  end

  while (r[i] < n) && (arr[r[i]+1]-arr[i] <= k)
    r[i] += 1
  end
end
(1..n-1).each do |i|
  ans += r[i] - i
end
p ans
