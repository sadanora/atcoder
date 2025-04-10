N, M = gets.split.map(&:to_i)
S = gets.split.map(&:to_i)

muji_ok = M
muji_ng = 0
logo_ok = 0
logo_ng = 0

S[0].digits.each{|s|
  if s == 0
    muji_ok += muji_ng
    muji_ng = 0
    logo_ok += logo_ng
    logo_ng = 0
  elsif s == 1
    if muji_ok > 0
      muji_ok -= 1
      muji_ng += 1
    elsif logo_ok > 0
      logo_ok -= 1
      logo_ng += 1
    else
      logo_ng += 1
    end
  else
    if logo_ok > 0
      logo_ok -= 1
      logo_ng += 1
    else
      logo_ng += 1
    end
  end
}
puts logo_ok + logo_ng
