a, b, c, d, e, f = gets.split.map(&:to_i)
g, h, i, j, k, l = gets.split.map(&:to_i)
if ((a-(j-g)+1)..(d-1)).include?(g) && ((b-(k-h)+1)..(e-1)).include?(h) && ((c-(l-i)+1)..(f-1)).include?(i)
  puts 'Yes'
else
  puts 'No'
end
