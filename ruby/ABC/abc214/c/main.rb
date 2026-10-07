n = gets.to_i
ss = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)
start = ts.each_index.min_by { |i| ts[i] }
time = Array.new(n)
time[start] = ts[start]
n.times do |i|
  j = (start+i) % n
  nxt = (j+1) % n
  time[nxt] = [ts[nxt], time[j]+ss[j]].min
end
time.each { puts _1 }

__END__
n = gets.to_i
ss = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)
time = Array.new(n, Float::INFINITY)
2.times do
  n.times do |i|
    nxt = (i+1) % n
    time[nxt] = [ts[nxt], time[i]+ss[i]].min
  end
end
time.each { puts _1 }
