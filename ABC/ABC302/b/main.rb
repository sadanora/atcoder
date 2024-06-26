h, w = gets.split.map(&:to_i)
arr = [Array.new(w+1){ '0' }]
h.times { arr << gets.chomp.split('').unshift('0') }
dx = [-1, -1, -1, 0, 0, 1, 1, 1]
dy = [-1, 0, 1, -1, 1, -1, 0, 1]

(1..h).each { |i|
  (1..w).each { |j|
    8.times { |k|
      str = ''
      5.times { |t|
        x = i + t * dx[k]
        y = j + t * dy[k]
        break if ( x < 0 || x > h || y < 0 || y > w)
        str << arr[x][y]
      }
      if str == 'snuke'
        5.times { |t|
          x = i + t * dx[k]
          y = j + t * dy[k]
          puts [x, y].join(' ')
        }
        exit
      end
    }
  }
}
