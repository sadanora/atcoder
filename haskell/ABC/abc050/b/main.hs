-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  n <- getInt
  ts <- getInts
  m <- getInt
  pxs <- replicateM m getTuple
  let base = sum ts
  forM_ (map (\(p, x) -> base - (ts!!(p-1) - x)) pxs) print

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
getTuple :: IO (Int, Int)
getTuple = (\[x, y] -> (x, y)) <$> getInts
