n = gets.to_i
arr = n.times.map { gets.chomp.chars }
ans = Array.new(n){Array.new(n){0}}
(n).times { |i|
  (n).times { |j|
    if i == 0 || j == 0 || i == n-1 || j == n-1
      ans[i][j+1] = arr[i][j] if (i == 0) && (j < n - 1)
      ans[i+1][j] = arr[i][j] if (i < n - 1) && (j == n - 1)
      ans[i][j-1] = arr[i][j] if (i == n - 1) && (j > 0)
      ans[i-1][j] = arr[i][j] if (i > 0) && (j == 0)
    else
      ans[i][j] = arr[i][j]
    end
  }
}
ans.each { puts _1.join }
