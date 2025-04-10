a, b, c, d, e, f, x = gets.split.map(&:to_i)
takahashi = (((x / (a+c))*a) + [a, x%(a+c)].min) * b
aoki = (((x / (d+f))*d) + [d, x%(d+f)].min) * e
if takahashi < aoki
  puts 'Aoki'
elsif takahashi > aoki
  puts 'Takahashi'
else
  puts 'Draw'
end
