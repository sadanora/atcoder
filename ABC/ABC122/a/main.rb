b = gets.chomp
S = %w(A T C G)
T = %w(T A G C)
S.each_with_index{|s, i|
  if s == b
    puts T[i]
  end
}
