main :: IO ()
main = do
  [n] <- getInts
  print $ sum [ fizzbuzz x | x <- [1..n] ]

fizzbuzz :: Int -> Int
fizzbuzz x
  | x `mod` 15 == 0 = 0
  | x `mod` 5 == 0 = 0
  | x `mod` 3 == 0 = 0
  | otherwise = x

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
