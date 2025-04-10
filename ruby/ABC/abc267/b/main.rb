def search(column)
  7.times { |i|
    i.times { |j|
      if column[i] && column[j]
        ((j+1)...i).each { |k|
          return 'Yes' unless column[k]
        }
      end
    }
  }
  return 'No'
end

s = '0' + gets.chomp
if s[1] == '1'
  puts 'No'
  exit
else
  column = Array.new(7, false)
  column[0] = (s[7] == '1')
  column[1] = (s[4] == '1')
  column[2] = (s[2] == '1') || (s[8] == '1')
  column[3] = (s[1] == '1') || (s[5] == '1')
  column[4] = (s[3] == '1') || (s[9] == '1')
  column[5] = (s[6] == '1')
  column[6] = (s[10] == '1')
  puts search(column)
end
