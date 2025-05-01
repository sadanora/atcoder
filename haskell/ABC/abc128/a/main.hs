main :: IO()
main = do
  [a, p] <- getInts
  print $ (a*3 + p) `div` 2

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
