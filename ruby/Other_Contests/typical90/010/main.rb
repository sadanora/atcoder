n = gets.to_i
students = n.times.map { gets.split.map(&:to_i)}
q = gets.to_i
lr = q.times.map { gets.split.map(&:to_i) }
c_arr = Array.new(2) {Array.new(n, 0)}
students.each_with_index {|s, i|
  c, po = s
  c_arr[c-1][i] = po
}
cs = [[0], [0]]
c_arr.each_with_index {|cl, i|
  cl.each { |po|
    cs[i] << cs[i][-1] + po
  }
}
lr.each {|l, r|
  puts "#{cs[0][r] - cs[0][l-1]} #{cs[1][r] - cs[1][l-1]}"
}
