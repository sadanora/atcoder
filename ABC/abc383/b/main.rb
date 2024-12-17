h, w, d = gets.split.map(&:to_i)
arr = h.times.map { gets.chomp.split('') }
arr.unshift(Array.new(w, '#'))
arr.each { _1.unshift('#')}
ans = 0
1.upto(h) do |i|
  1.upto(w) do |j|
    next if arr[i][j] == '#'

    1.upto(h) do |k|
      1.upto(w) do |l|
        next if arr[k][l] == '#' || (i == k && j == l)

        c = 0
        1.upto(h) do |m|
          1.upto(w) do |n|
            if (arr[m][n] == '.' && ((m-i).abs + (n-j).abs <= d || (m-k).abs + (n-l).abs <= d ))
              c += 1
            end
          end
        end
        ans = [ans, c].max
      end
    end
  end
end
puts ans
