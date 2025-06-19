-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}

import qualified Data.ByteString.Char8 as BS
import qualified Data.Set as Set
import qualified Data.Map.Strict as Map

main :: IO ()
main = do
  [n, m] <- getInts
  as <- getInts
  bs <- getInts
  let counted_as = counts as
      uniqed_bs = uniq bs
  print $ sum [ Map.findWithDefault 0 k counted_as | k <- uniqed_bs ]

uniq = Set.toList . Set.fromList

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
counts :: Ord a => [a] -> Map.Map a Int
counts = Map.fromListWith (+) . map (, 1)
