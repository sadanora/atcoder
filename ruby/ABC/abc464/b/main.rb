h, w = gets.split.map(&:to_i)
arr = h.times.map{ gets.chomp.chars }
res = arr
h.times do |i|
  if arr[i].any?('#')
    res = arr[i..]
    break
  end
end
-1.downto(-(res.size)-1) do |i|
  if res[i].any?('#')
    res = res[..i]
    break
  end
end
res = res.transpose
w.times do |i|
  if res[i].any?('#')
    res = res[i..]
    break
  end
end
-1.downto(-(res.size)-1) do |i|
  if res[i].any?('#')
    res = res[..i]
    break
  end
end
res.transpose.each { puts _1.join('') }
