-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List

main :: IO ()
main = do
  getLine
  ds <- getInts
  print $ sum $ map (uncurry (*)) $ combinations ds

combinations xs = [(x, y) | (x:ys) <- tails xs, y <- ys]

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
