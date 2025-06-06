{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad

main :: IO ()
main = do
  [h, w] <- getInts
  grid <- getIntGrid h
  let m = V.minimum $ V.concatMap id grid
      s = V.map (\row -> V.map (\x -> x - m) row) grid
  print $ V.sum $ V.concatMap id s

getInts :: IO [Int]
getInts = toInt <$> BS.getLine

getIntGrid :: Int -> IO (V.Vector (V.Vector Int))
getIntGrid n = V.fromList . map (V.fromList . toInt) <$> replicateM n BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
