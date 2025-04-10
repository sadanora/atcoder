N = gets.to_i
A = gets.split.map(&:to_i)
Q = gets.to_i
cs = [0]
A.each_with_index { |a, i| cs[i + 1] = cs[i] + a }
Q.times  do
  l, r = gets.split.map(&:to_i)
  rounds = r - (l - 1)
  win_sum = cs[r] - cs[l - 1]
  if rounds < win_sum * 2
    puts 'win'
  elsif rounds > win_sum * 2
    puts 'lose'
  else
    puts 'draw'
  end
end
