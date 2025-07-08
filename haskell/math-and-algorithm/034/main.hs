-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List

main :: IO ()
main = do
  n <- getInt
  xys <- replicateM n (toTuple . map ((read :: String -> Double) . BS.unpack) . BS.words <$> BS.getLine)
  print . minimum . map dist . combinations $ xys

dist ((x1, y1), (x2, y2)) = sqrt $ (x1 - x2) ** 2 + (y1 - y2) ** 2

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)
combinations :: [b] -> [(b, b)]
combinations xs = [(x, y) | (x:ys) <- tails xs, y <- ys]
