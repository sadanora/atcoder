n, v = gets.split.map(&:to_i)
ws = gets.split.map(&:to_i)
ans = 0
(0...n).each do |i|
    (i+1...n).each do |j|
        (j+1...n).each do |k|
            a, b, c = [ws[i], ws[j], ws[k]]
            res = [a,b,c].sum
            if [i+1, j+1, k+1].sum <= v
                ans = [res, ans].max 
            end
        end
    end
end
puts ans
