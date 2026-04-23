(gets.to_i).times do
  n, d = gets.split.map(&:to_i)
  as = gets.split.map(&:to_i)
  bs = gets.split.map(&:to_i)
  q = []
  head = 0
  n.times do |i|
    as[i].times { q << i }
    bs[i].times { head += 1 }
    while head < q.size && q[head] == (i - d)
      head += 1
    end
  end
  puts q.size - head
end

__END__
配列の操作コストでTLE

(gets.to_i).times do
  n, d = gets.split.map(&:to_i)
  as = gets.split.map(&:to_i)
  bs = gets.split.map(&:to_i)
  q = []
  n.times do |i|
    q += Array.new(as[i], i)
    # as[i].times { q << i }

    q = q[bs[i]..]
    # bs[i].times { q.shift }
    while (!q.empty?) && (q[0] == (i-d))
      q.shift
    end
  end
  puts q.size
end
