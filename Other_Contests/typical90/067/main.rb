n, K = gets.split
K.to_i.times{ n = n.to_i(8).digits(9).reverse.join.gsub('8', '5') }
puts n
