s = gets.chomp
d = {
  Monday: 5,
  Tuesday: 4,
  Wednesday: 3,
  Thursday: 2,
  Friday: 1
}
puts d[s.to_sym]
