n, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
row, col = Array.new(2){Array.new(n, 0)}
dia = [0, 0]
a.each.with_index(1) { |num, idx|
  i = num - 1
  j = i / n
  k = i % n
  row[j] += 1
  col[k] += 1
  dia[0] += 1 if j == k
  dia[1] += 1 if (j + k) == n - 1

  if [row[j], col[k], dia].flatten.include?(n)
    puts idx
    exit
  end
}
puts -1
