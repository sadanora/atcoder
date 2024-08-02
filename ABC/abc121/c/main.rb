N, M = gets.split.map(&:to_i)
arr = Array.new(N){gets.split.map(&:to_i)}.sort_by{_1[0]}
ans = 0
b = 0
arr.each{|a|
  a[1].times{
    ans += a[0]
    b += 1
    if b == M
      puts ans
      exit
    end
  }
}
