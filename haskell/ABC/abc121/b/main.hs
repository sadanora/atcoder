{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad

main :: IO ()
main = do
  [n, m, c] <- getInts
  vb <- V.fromList . toInt <$> BS.getLine
  va <- getIntGrid n
  print . length . V.filter (\row -> (V.sum $ V.zipWith (*) row vb) + c > 0) $ va

getInts :: IO [Int]
getInts = toInt <$> BS.getLine

getIntGrid :: Int -> IO (V.Vector (V.Vector Int))
getIntGrid n = V.fromList . map (V.fromList . toInt) <$> replicateM n BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
