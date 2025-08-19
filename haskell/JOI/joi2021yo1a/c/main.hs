-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.List

main :: IO ()
main = do
  [n, m] <- getInts
  as <- getInts
  bs <- getInts
  forM_ (sort $ uniq $ [ a | a <- as, a `elem` bs ]) print

uniq [] = []
uniq (x:xs) = x:uniq (filter (/= x) xs)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
