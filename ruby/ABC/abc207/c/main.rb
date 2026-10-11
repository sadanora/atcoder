n = gets.to_i
arr = n.times.map do
  t, l, r = gets.split.map(&:to_i)
  l = l*2 + (t == 3 || t == 4 ? 1 : 0)
  r = r*2 - (t == 2 || t == 4 ? 1 : 0)
  [l, r]
end
ans = 0
arr.each_index do |i|
  (i+1...n).each do |j|
    li, ri = arr[i]
    lj, rj = arr[j]
    # 重複するケースの列挙
    # if (li <= lj && lj <= ri) ||
    #    (li <= rj && rj <= ri) ||
    #    (lj <= li && li <= rj) ||
    #    (lj <= ri && ri <= rj)
    #   ans += 1
    # end
    #
    # 重複しない条件
    # ri < lj || rj < li
    #
    # 重複しない条件の否定
    # !(ri < lj || rj < li) 
    # ⇔ ド・モルガンの法則
    # !(ri < lj) && !(rj < li)
    # ⇔ 比較演算子の否定
    # ri >= lj && rj >= li
    # ⇔ 共通部分の左端 <= 右端
    # [li, lj].max <= [ri, rj].min
    ans += 1 if [li, lj].max <= [ri, rj].min
  end
end
puts ans
