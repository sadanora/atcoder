-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- getInt
  print $ length $ filter solve [1,3..n]

solve x = (==) 8 (length [ y | y <- [1..x], x `mod` y == 0 ])

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
