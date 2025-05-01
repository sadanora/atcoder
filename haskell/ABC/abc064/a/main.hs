main :: IO ()
main = do
  [a, b, c] <- getInts
  putStrLn $ solve a b c

solve a b c = if (100*a + 10*b + c) `mod` 4 == 0 then "YES" else "NO"
{-- IO --}
getInts :: IO [Int]
getInts = map read . words <$> getLine
