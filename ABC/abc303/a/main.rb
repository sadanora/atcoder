gets
s = gets.chomp
t = gets.chomp
puts s.tr("01", "ol") == t.tr("01", "ol") ? 'Yes' : 'No'
