main :: IO()
main = do
  [n] <- getInts
  print $ solve n `mod` 1000

solve :: (Eq a, Num a) => a -> a
solve m = if m == 0 then 0 else 1000 - m

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
