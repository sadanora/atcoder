include Math
a, b, d = gets.split.map(&:to_i)
d *= Math::PI / 180
puts "#{a*cos(d) - b*sin(d)} #{a*sin(d) + b*cos(d)}"
