-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List
import Data.Ord

main :: IO ()
main = do
  n <- getInt
  xys <- zip [1..] <$> replicateM n getTuple
  mapM_ (print . solve xys) xys
solve points (i1, p1) = fst $ maximumBy compareDist [(i2, dist p1 p2) | (i2, p2) <- points, i1 /= i2]
dist (x1, y1) (x2, y2) = (x1 - x2)^2 + (y1 - y2)^2
compareDist = comparing snd <> flip (comparing fst)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
getTuple :: IO (Int, Int)
getTuple = (\[x, y] -> (x, y)) <$> getInts
