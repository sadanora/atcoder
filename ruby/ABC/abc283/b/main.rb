n = gets.to_i
a_arr = gets.split.map(&:to_i)
q = gets.to_i
q.times {
  i, k, x = gets.split.map(&:to_i)
  case i
  when 1
    a_arr[k-1] = x
  when 2
    puts a_arr[k-1]
  end
}

