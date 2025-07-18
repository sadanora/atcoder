-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  print . maximum . (0 :) . map length . filter (all (`elem` "ATGC")) $ substrings s

substrings s = [ take (j - i) (drop i s) | i <- [0..n-1], j <- [i+1..n] ]
  where n = length s
