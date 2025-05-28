{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  [n, m] <- getInts
  xa <- getInts
  xb <- getInts
  print $ sum [max a b * sum [a, b] | a <- xa, b <- xb]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
