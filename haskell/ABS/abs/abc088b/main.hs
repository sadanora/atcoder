import Data.List
import Data.Ord
main :: IO ()
main = do
  _ <- getLine
  arr <- map (read :: String -> Int) . words <$> getLine
  print $ sum $ zipWith (*) (cycle [1, -1]) $ sortBy (comparing Data.Ord.Down) arr
