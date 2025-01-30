puts gets.chomp.chars.inject("0123456789") { |res, c| res.delete(c) }
