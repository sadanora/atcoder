-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}

import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  t <- BS.unpack <$> BS.getLine
  let ls = length s
      lt = length t
      substrings = [ take lt (drop i s) | i <- [0..ls-lt ] ]
      diffCount a b = sum $ zipWith (\x y -> fromEnum (x /= y)) a b
  print $ minimum $ map (`diffCount` t) substrings
