r, c = gets.split.map(&:to_i)
rc = r.times.map{ gets.chomp.split('') }
blasted  = Array.new(r){ Array.new(c){false}}
r.times { |i|
  c.times { |j|
    next if rc[i][j].to_i == 0
    power = rc[i][j].to_i
    r.times { |ni|
      c.times { |nj|
        blasted[ni][nj] = true if ((i-ni).abs + (j-nj).abs <= power)
      }
    }
  }
}
r.times { |i|
  c.times { |j|
    rc[i][j] = '.' if blasted[i][j]
  }
}
puts rc.map { _1.join }
