-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [a, b, c] <- getInts
  print $ solve a b c
  where
    solve a b c
      | a == b = c
      | a == c = b
      | b == c = a
      | otherwise = 0
{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
