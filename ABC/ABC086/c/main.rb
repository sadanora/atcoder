N = gets.to_i
pt, px, py = [0, 0, 0]
N.times{
  t, x, y = gets.split.map(&:to_i)
  d = (px - x).abs + (py - y).abs
  dt = t - pt
  if dt < d || (dt - d).odd?
    puts 'No'
    exit
  end
  pt, px, py = [t, x, y]
}
puts 'Yes'
