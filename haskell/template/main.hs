import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe

main :: IO ()
main = do

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> BS.getContents

toInt :: String -> [Int]
toInt = map (read . BS.unpack) . BS.words
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn

counts :: Ord a => [a] -> [(a, Int)]
counts = map count . group . sort
  where count xs = (head xs, length xs)
