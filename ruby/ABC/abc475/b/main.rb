n = gets.to_i
as = gets.split.map(&:to_i)
bill = 1000
arr = [0, 0, 0]
as.each do |a|
  bills = a.ceildiv(bill)
  change = bills * bill - a

  c100, change = change.divmod(100)
  c10, change = change.divmod(10)
  arr[0] += change
  arr[1] += c10
  arr[2] += c100
end
puts arr.join(' ')
