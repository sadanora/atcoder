n = gets.to_i
a_arr = [0, *gets.split.map(&:to_i)]
w_arr = [0, *gets.split.map(&:to_i)]
count = Array.new(n+1){0}
boxes = Array.new(n+1){[]}
1.upto(n) { |i|
  count[a_arr[i]] += 1
  boxes[a_arr[i]] << w_arr[i]
}
ans = 0
boxes.each{ |box|
  ans += box.sort[...-1].sum if box.size > 1
}
puts ans
