def rec(n)
  return 1 if n == 1

  "#{rec(n - 1)} #{n} #{rec(n - 1)}"
end
puts rec(gets.to_i)
