h, w = gets.split.map(&:to_i)
arr = h.times.map { gets.chomp.split('').unshift('').push('') }
arr.push(Array.new(w + 2, ''))
arr.unshift(Array.new(w + 2, ''))

ans = []
1.upto(h) do |i|
  col = []
  1.upto(w) do |j|
    if arr[i][j] == '#'
      col << '#'
      next
    end
    b = 0
    b += [
      arr[i - 1][j - 1],
      arr[i - 1][j],
      arr[i - 1][j + 1],
      arr[i][j - 1],
      arr[i][j],
      arr[i][j + 1],
      arr[i + 1][j - 1],
      arr[i + 1][j],
      arr[i + 1][j + 1]
    ].count('#')
    col << b
  end
  ans << col
end
puts ans.map { _1.join }
