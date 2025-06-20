main :: IO ()
main = do
  [h1, w1] <- getInts
  [h2, w2] <- getInts
  print $ (h1-h2) * (w1-w2)

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
