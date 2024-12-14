arr = gets.split.map(&:to_i)
problems = {}
[:A,:B,:C,:D,:E].each_with_index { |s, i| problems[s] = arr[i] }
names = 5.times.map { |i| [:A,:B,:C,:D,:E].combination(i+1).to_a }.flatten(1)

result = {}
names.each do |name|
  score = 0
  name.each do |c|
    score += problems[c]
  end
  result[name.join] = score
end

result.sort { |a,b| [b[1], a[0]] <=> [a[1], b[0]] }.map { puts _1[0] }
