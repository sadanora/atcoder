-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS
import Data.List
import Data.Ord

main :: IO ()
main = do
  [a, b] <- getInts
  print . sum . take 2 . sortBy (comparing Down) $ [1..a] ++ [1..b]

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
