-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [n, k] <- map fromIntegral <$> getInts
  print $ solve n k

solve :: Integer -> Integer -> Integer
solve n k
  | k == 0 = n
  | n `mod` 200 == 0 = solve (n`div`200) (k-1)
  | otherwise = solve (read $ show n ++ "200" :: Integer) (k-1)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
