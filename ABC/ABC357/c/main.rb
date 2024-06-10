def build(n)
  if n == 0
    return ['#']
  end
  sub = build(n - 1)
  length = sub.length
  arr = Array.new(3 * length){Array.new(3 * length, '.')}
  3.times { |i|
    3.times { |j|
      if i != 1 || j != 1
        length.times { |k|
          length.times { |l|
            arr[i * length + k][j * length + l] = sub[k][l]
          }
        }
      end
    }
  }
  arr
end

n = gets.to_i
if n == 0
  puts '#'
  exit
end
build(n).each { puts _1.join }
