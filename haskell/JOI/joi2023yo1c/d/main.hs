-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
-- import Data.List
-- import Data.Maybe

main :: IO ()
main = do
  n <- getInt
  as <- getInts
  -- forM_ (map (\a -> 1 + fromJust (elemIndex a (sort as))) as) print
  forM_ (map (\a -> (+1) $ length $ filter (<a) as) as) print

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
