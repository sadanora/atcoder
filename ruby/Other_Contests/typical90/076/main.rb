N = gets.to_i
A = gets.split.map(&:to_i)
arr = A * 2
if A.sum / 10 == 0
  puts 'No'
  exit
else
  arr.each_with_index{|_, l|
    arr.length.times{|r|
      diff = (arr[l..r]).to_a.sum
      if diff ==  A.sum / 10
        puts 'Yes'
        exit
      end
    }
  }
end
puts 'No'
