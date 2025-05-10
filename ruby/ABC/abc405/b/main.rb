n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
res = 0
while true
  (1..m).each do
    unless arr.include?(_1)
      puts res
      exit
    end
  end
  arr.pop
  res += 1
end
