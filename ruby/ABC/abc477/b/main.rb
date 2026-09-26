n, d = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i).map.with_index(1) { |x,i| [x,i] }.sort
ans = []
n.times do |i|
    if xs[i-1] && xs[i+1]
        ans << xs[i][1] if ((xs[i-1][0]-xs[i][0]).abs >= d) && ((xs[i][0]-xs[i+1][0]).abs >= d)
    elsif xs[i-1]
        ans << xs[i][1] if (xs[i-1][0]-xs[i][0]).abs >= d
    elsif xs[i+1]
        ans << xs[i][1] if (xs[i][0]-xs[i+1][0]).abs >= d
    end
end
puts ans.count
puts ans.sort.join(' ')
