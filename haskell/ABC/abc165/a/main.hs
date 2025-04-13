main :: IO ()
main = do
  k <- readLn :: IO Int
  [a, b] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if any (\x-> x `mod` k == 0) [a..b] then "OK" else "NG"
