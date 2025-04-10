N = gets.to_i
A = gets.split.map(&:to_i)
ans = 'No'
(0..N - 1).each do |i|
  (i + 1..N - 1).each do |j|
    (j + 1..N - 1).each do |k|
      if A[i] + A[j] + A[k] == 1000
        ans = 'Yes'
        break
      end
    end
  end
end
puts ans
