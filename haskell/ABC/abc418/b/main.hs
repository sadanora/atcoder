-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}

import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  let n = length s
      prefix = scanl (\acc c -> acc + fromEnum (c == 't')) 0 s
      score i j =
        let len = j - i
            cnt = prefix !! j - prefix !! i
        in if len >= 3 && s !! i == 't' && s !! (j-1) == 't'
            then fromIntegral (cnt - 2) / fromIntegral (len - 2)
            else 0
  print $ maximum [score i j | i <- [0..n-1], j <- [i+1..n]]

-- main :: IO ()
-- main = do
--   s <- BS.unpack <$> BS.getLine
--   print $ maximum $ map solve $ substrings s

-- solve t
--   | (length t >= 3) && (head t == 't') && (last t == 't') = fromIntegral (x - 2) / fromIntegral (length t - 2)
--   | otherwise = 0
--   where x = length $ elemIndices 't' t

-- substrings s = [ take (j - i) (drop i s) | i <- [0..n-1], j <- [i+1..n] ]
--   where n = length s
