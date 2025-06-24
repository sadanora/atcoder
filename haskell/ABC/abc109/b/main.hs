-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Bool (bool)
import qualified Data.Map.Strict as Map

main :: IO ()
main = do
  n <- getInt
  ws <- replicateM n getLine
  printYn $ shiritori ws && uniq ws

uniq = all ((== 1) . snd) . Map.toList . counts
shiritori ws = all (\(f, s) -> last f == head s) $ zip ws (tail ws)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
counts :: Ord a => [a] -> Map.Map a Int
counts = Map.fromListWith (+) . map (, 1)
