K, G, M = gets.split.map(&:to_i)
gl = 0
mg = 0
K.times do |i|
  if gl == G
    gl = 0
  elsif mg == 0
    mg = M
  else
    if gl + mg <= G
      gl += mg
      mg = 0
    elsif gl + mg > G
      l = G - gl
      gl += l
      mg -= l
    end
  end
end
puts [gl, mg].join(' ')
