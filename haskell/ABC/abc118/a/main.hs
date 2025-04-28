main :: IO ()
main = do
  [a, b] <- getInts
  print $ solve a b

solve a b = if b `mod` a == 0 then a+b else b-a
{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
