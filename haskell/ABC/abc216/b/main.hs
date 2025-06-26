-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Bool (bool)
import qualified Data.Set as Set

main :: IO ()
main = do
  n <- getInt
  sts <- map (toTuple . words . BS.unpack) <$> replicateM n BS.getLine
  printYn . hasDuplicate $ sts

hasDuplicate :: Ord a => [a] -> Bool
hasDuplicate xs = length xs /= Set.size (Set.fromList xs)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
