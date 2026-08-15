n = gets.to_i
arr = gets.split.map(&:to_i)
poss, negs = arr.partition { _1.positive? }
poss = poss.sort
negs = negs.sort { _2 <=> _1 }
ans = 0
cur_position = 0
while !poss.empty? && !negs.empty?
  pos = (poss[0] - cur_position).abs
  neg = (negs[0] - cur_position).abs
  t = neg <= pos ? negs.shift : poss.shift
  ans += (cur_position-t).abs
  cur_position = t
end
if poss.empty?
  ans += (negs[-1] - cur_position).abs
else
  ans += (poss[-1] - cur_position).abs
end
p ans
