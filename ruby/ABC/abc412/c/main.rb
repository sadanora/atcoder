t = gets.to_i
t.times do
  gets.to_i
  ss = gets.split.map(&:to_i)

  arr = [ss[0]]
  res = -1
  (ss[1..]).each do |s|
    r = arr[-1]
    if 2*r >= ss[-1]
      arr << ss[-1]
      res = arr.size
      break
    else
      ms = ss.filter { (2*r) >= _1 }
      if ms
        arr << ms.max
      else
        res = -1
        break
      end
    end
  end
  puts res
end
