{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [n, s] <- getInts
  print $ length $ filter (<=s) [a+b | a <- [1..n], b <- [1..n]]

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
