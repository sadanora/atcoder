A, B = gets.split.map(&:to_i)
S = gets.chomp
if S.length != A + B + 1 || S[A] != '-'
  puts 'No'
  exit
end
puts S[0...A].concat(S[(A+1)..]).chars.all?{_1.match?(/\d/)} ? 'Yes' : 'No'
