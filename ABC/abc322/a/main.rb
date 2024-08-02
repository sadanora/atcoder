N = gets.to_i
S = gets.chomp.chars
S.each_with_index do |s, i|
  if s == 'A' && S[i + 1] == 'B' && S[i + 2] == 'C'
    puts i + 1
    exit
  end
end
puts(-1)
