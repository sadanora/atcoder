import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe
import qualified Data.Set as Set
import Text.Printf

main :: IO ()
main = do
  [_, p, q, r, s] <- getInts
  arr <- getInts
  let l1 = take (p-1) arr
      l2 = slice (p-1) (q-p+1) arr
      m  = slice q (r-q-1) arr
      r1 = slice (r-1) (s-r+1) arr
      r2 = drop s arr
  putStrLn $ unwords . map show $ l1 ++ r1 ++ m ++ l2 ++ r2

slice :: Int -> Int -> [a] -> [a]
slice pos len xs = take len $ drop pos xs

getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents

toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn

counts :: Ord a => [a] -> [(a, Int)]
counts = map count . group . sort
  where count xs = (head xs, length xs)
