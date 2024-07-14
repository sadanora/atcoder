


__END__
require 'matrix'
a, b, c = 3.times.map { gets.split.map(&:to_i) }
ab = Vector[(a[0]-b[0]), (a[1] - b[1])]
bc = Vector[(b[0] - c[0]), (b[1] - c[1])]
ca = Vector[(c[0] - a[0]), (c[1] - a[1])]

def degree(v1, v2)
  v1.angle_with(v2) * 180.0 / Math::PI == 90.0 ? 'Yes' : 'No'
end

ans = ''
[ab, bc, ca].combination(2).to_a.each { |i, j|
  break if ans == 'Yes'
  ans = degree(i, j)
}
puts ans
