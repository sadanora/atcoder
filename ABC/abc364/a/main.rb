def rec(si, count)
  return true if count < 3

  sj = gets.chomp
  si == 'sweet' && sj == 'sweet' ? false : rec(sj, count - 1)
end

n = gets.to_i
puts rec(gets.chomp, n) ? 'Yes' : 'No'
