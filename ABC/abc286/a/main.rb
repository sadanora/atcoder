n, p, q, r, s = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a[r - 1...s], a[p - 1...q] = a[p - 1...q], a[r - 1...s]
puts a.join(' ')
