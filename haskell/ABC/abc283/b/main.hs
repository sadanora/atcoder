{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE LambdaCase #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Array.IO
import Data.Maybe
import Data.Foldable

main :: IO ()
main = do
  n <- getInt
  as <- getInts
  q <- getInt
  qs <- replicateM q getInts

  as <- newListArray @IOUArray (1, n) as
  for_ qs $ \case
    [1, k, x] -> writeArray as k x
    [2, k] -> print =<< readArray as k

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
