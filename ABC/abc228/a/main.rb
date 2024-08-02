S, T, X = gets.split.map(&:to_i)
if S < T
  puts S <= X && X < T ? 'Yes' : 'No'
else
  puts X < T || S <= X ? 'Yes' : 'No'
end
