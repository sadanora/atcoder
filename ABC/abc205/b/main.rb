puts (1..gets.to_i).to_a == gets.split.map(&:to_i).sort ? 'Yes': 'No'
