-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- getInt
  print $ solve n

solve :: Int -> Int
solve 0 = 1
solve x = x * solve (x-1)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
