{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List

main :: IO ()
main = do
  n <- getInt
  xs <- replicateM n getInts
  let [xa, xb] = [zip x [1..n] | x <- (transpose xs)]
  print $ minimum $ (map sum xs) ++ [max a b | (a, ai) <- xa, (b, bi) <- xb, ai /=  bi]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
