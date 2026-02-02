-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe
import qualified Data.Map.Strict as Map

main :: IO ()
main = do
  s <- getLine
  putStrLn $ s ++ "s"

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

getCharGrid :: Int -> IO (V.Vector (V.Vector Char))
getCharGrid n = V.fromList . map (V.fromList . BS.unpack) <$> replicateM n BS.getLine
getIntGrid :: Int -> IO (V.Vector (V.Vector Int))
getIntGrid n = V.fromList . map (V.fromList . toInt) <$> replicateM n BS.getLine

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
counts :: Ord a => [a] -> Map.Map a Int
counts = Map.fromListWith (+) . map (, 1)
combinations xs = [(x, y) | (x:ys) <- tails xs, y <- ys]
