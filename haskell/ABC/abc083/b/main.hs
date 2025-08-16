-- stack script --resolver lts-22 --package bytestring --package vector --package containers
import Data.Char

main :: IO ()
main = do
  [n, a, b] <- getInts
  print $ sum [ x | x <- [1..n], let s = sum (digits x), a <= s && s <= b ]

digits :: Int -> [Int]
digits = map digitToInt . show

{-- IO --}
getInts :: IO [Int]
getInts = map (read :: String -> Int) . words <$> getLine
