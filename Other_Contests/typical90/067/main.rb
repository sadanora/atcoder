n, k  = gets.split
(k.to_i).times { n = n.to_i(8).to_s(9).gsub(/8/, '5') }
puts n
