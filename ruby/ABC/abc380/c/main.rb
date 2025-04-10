n, k = gets.split.map(&:to_i)
s = gets.chomp
# [0,_1,_2,_4,_7,_10,_12,_14,_15]
idx = [0, *(1...n).select { s[_1-1] != s[_1] }, n]
# ["0",_"1",_"00",_"111",_"000",_"11",_"00",_"1"]
splitted_s = (0...(idx.size-1)).map { s.slice(idx[_1]...idx[_1+1]) }
t = s[0] == '0' ? 2*k-1 : 2*k-2
splitted_s[t-1], splitted_s[t] = splitted_s[t], splitted_s[t-1]
puts splitted_s.join
