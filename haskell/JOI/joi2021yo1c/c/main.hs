{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  [n, m] <- getInts
  va <- sort <$> getInts
  vb <- sort <$> getInts
  let c = map (\x -> filter (>=x) vb ) va
  print $ length $ concat c

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
