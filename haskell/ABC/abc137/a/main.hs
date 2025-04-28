main :: IO ()
main = do
  [a, b] <- map (read :: String -> Int) . words <$> getLine
  print $ maximum [a+b, a-b, a*b]
