-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List

main :: IO ()
main = do
  ad <- sort <$> replicateM 4 getInt
  ef <- sort <$> replicateM 2 getInt
  print $ sum (tail ad) + last ef

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
