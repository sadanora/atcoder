n, m = gets.split.map(&:to_i)
pcf = n.times.map { gets.split.map(&:to_i) }.sort

(n-1).times {
  pi, _, *fi = pcf.shift
  pcf.each { |arr|
    pj, _, *fj = arr
    # next if fi.size <= fj.size

    if (fi & fj).size >= fi.size && (fi | fj).size > fj.size || pi < pj
      puts 'Yes'
      exit
    end
  }
}
puts 'No'
