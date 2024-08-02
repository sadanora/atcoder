H, W, N = gets.split.map(&:to_i)
arr = Array.new(H){['.'] * W}
di = [-1,0,1,0]
dj = [0,1,0,-1]
i, j, v = 0, 0, 0
N.times{
  if arr[i][j] == '.'
    arr[i][j] = '#'
    v += 1
  else
    arr[i][j] = '.'
    v += 3
  end
  v %= 4
  i += di[v]
  j += dj[v]
  i = i % H
  j = j % W
}
puts arr.map(&:join)
