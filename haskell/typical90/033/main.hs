main :: IO ()
main = do
  [h, w] <- getInts
  print $ if h == 1 || w == 1 then h*w else ceilDiv h 2 * ceilDiv w 2

ceilDiv :: Integral a => a -> a -> a
ceilDiv x y = div (x + y - 1) y

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
