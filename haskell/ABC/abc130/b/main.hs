-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  [n, x] <- getInts
  ls <- getInts
  let cs = scanl (+) 0 ls
  print . length . Data.List.findIndices (x>=) $ cs

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
