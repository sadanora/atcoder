h, w = gets.split.map(&:to_i)
arr = h.times.map{ gets.chomp.chars }
ans = 0
h.times do |h1|
  ((h1+1)..h).each do |h2|
    w.times do |w1|
      ((w1+1)..w).each do |w2|
        # res = true
        # (h1...h2).each do |i|
        #   (w1...w2).each do |j|
        #     if arr[i][j] != arr[h1+h2-i-1][w1+w2-j-1]
        #       res = false
        #       break
        #     end
        #   end
        # end
        # ans += 1 if res
        res = (h1...h2).all? do |i|
          (w1...w2).all? do |j|
            arr[i][j] == arr[h1+h2-i-1][w1+w2-j-1]
          end
        end
        ans += 1 if res
      end
    end
  end
end
puts ans
