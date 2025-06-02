-- stack script --resolver lts-22 --package bytestring --package vector

{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  [r, d, x2000] <- getInts
  forM_ (tail $ scanl (\acc _ -> r * acc - d) x2000 [1..10])  print

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
