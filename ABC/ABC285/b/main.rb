n = gets.to_i
s_arr = gets.chomp.chars
1.upto(n-1) { |i|
  1.upto(n) { |j|
    if (i+j) > n
      puts j-1
      break
    end
    if s_arr[j-1] == s_arr[j+i-1]
      puts j-1
      break
    end
  }
}
