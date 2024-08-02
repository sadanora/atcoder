n = gets.to_i
arr = n.times.map{ gets.chomp.chars }
ans = 'correct'
n.times { |i|
  n.times { |j|
    if ans == 'incorrect'
      puts ans
      exit
    end
    res = arr[i][j]
    if res == '-'
      next
    elsif res == 'W'
      arr[j][i] == 'L' ? next : ans =  'incorrect'
    elsif res == 'L'
      arr[j][i] == 'W' ? next : ans =  'incorrect'
    elsif res == 'D'
      arr[j][i] == 'D' ? next : ans =  'incorrect'
    end
    }
}
puts ans
