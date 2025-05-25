{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad

main :: IO ()
main = do
  [h, w] <- getInts
  grid <- getCharGrid h
  let doubledGrid = doubleRows grid
  V.mapM_ (putStrLn . V.toList) doubledGrid

doubleRows :: V.Vector (V.Vector Char) -> V.Vector (V.Vector Char)
doubleRows = V.concatMap (\row -> V.fromList [row, row])

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words

getCharGrid :: Int -> IO (V.Vector (V.Vector Char))
getCharGrid n = V.fromList . map (V.fromList . BS.unpack) <$> replicateM n BS.getLine
