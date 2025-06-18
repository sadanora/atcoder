-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  xy <- getInts
  print $ solve xy

solve [x, y]
  | x == y = x
  | otherwise = 3 - x - y

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
