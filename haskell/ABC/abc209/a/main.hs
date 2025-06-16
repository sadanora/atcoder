main :: IO ()
main = do
  [a, b] <- getInts
  print $ length [a..b]

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
