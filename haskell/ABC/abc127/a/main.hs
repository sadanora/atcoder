import Text.XHtml (base)
main :: IO ()
main = do
  [a, b] <- getInts
  print $ solve a b

solve a b
  | a <= 5 = 0
  | a <= 12 = b `div` 2
  | otherwise = b

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
