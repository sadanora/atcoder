f x = if even x then 1 + f (x `div` 2) else 0

main = do
  getLine
  a <- map read . words <$> getLine
  print $ minimum $ map f a
