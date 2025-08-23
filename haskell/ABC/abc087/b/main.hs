-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  [a, b, c, x] <- replicateM 4 getInt
  print $ sum
    [ 1 | i <- [0..a]
        , j <- [0..b]
        , k <- [0..c]
        , 500 * i + 100 * j + 50 * k == x
    ]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
