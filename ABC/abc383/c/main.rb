h, w, d = gets.split.map(&:to_i)
co = h.times.map{ gets.chomp.split }
INF = 10**12
DICT = Array.new(h){Array.new(w, INF)}
