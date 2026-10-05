a, b, c = gets.split.map(&:to_i)
a, b = a.abs, b.abs if c.even?
puts ({
       -1 => '<',
       0 => '=',
       1 => '>'
      }[a <=> b])
