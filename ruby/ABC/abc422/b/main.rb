h, w = gets.split.map(&:to_i)
arr = h.times.map{ [nil, *gets.chomp.split(''), nil] }
arr.unshift([nil] * w)
arr << ([nil] * w)
ans = "Yes"
1.upto(h) do |i|
  1.upto(w) do |j|
    if arr[i][j] == '#'
      c = [arr[i+1][j], arr[i-1][j], arr[i][j+1], arr[i][j-1]].count("#")
      unless c == 2 ||  c == 4
        ans = "No"
        break
      end
    end
  end
end
puts ans
