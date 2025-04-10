S = gets.chomp
es = S
S.length.times{
  es.chop!
  d = es.length/2
  l = es.slice(0...d)
  r = es.slice(d..)
  if l == r
    puts es.length
    exit
  end
}
