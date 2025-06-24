-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List
import Data.Maybe

main :: IO ()
main = do
  [n, m] <- getInts
  cs <- words . BS.unpack <$> BS.getLine
  ds <- words . BS.unpack <$> BS.getLine
  ps <- getInts
  print $ sum $ map (solve ps . (`elemIndex` ds)) cs

solve ps Nothing  = ps !! 0
solve ps (Just i) = ps !! (i + 1)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
