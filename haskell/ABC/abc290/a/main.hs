{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  [n, m] <- getInts
  xa <- getInts
  xb <- getInts
  print $ sum [a | (a, ai) <- zip xa [1..n], b <- xb, ai == b]

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
