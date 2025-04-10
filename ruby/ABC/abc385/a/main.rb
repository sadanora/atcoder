a,b,c = gets.split.map(&:to_i)
puts (a == b && b == c) || a+b == c || a+c == b || b+c == a ? 'Yes' : 'No'
