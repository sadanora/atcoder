-- stack script --resolver lts-22 --package bytestring --package vector
main :: IO ()
main = do
  [n, a, x, y] <- getInts
  let xc = min n a
      yc = n - xc
  print $ xc * x + yc * y
{-- IO --}
getInts :: IO [Int]
getInts = map read . words <$> getLine
