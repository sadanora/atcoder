{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe

main :: IO ()
main = do
  [h, w] <- getInts
  grid <- getCharGrid h
  print grid

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

getCharGrid :: Int -> IO (V.Vector (V.Vector Char))
getCharGrid n = V.fromList . map (V.fromList . BS.unpack) <$> replicateM n BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn

printVectorGrid  :: V.Vector (V.Vector Char) -> IO ()
printVectorGrid v =  V.mapM_ (putStrLn . V.toList) v
