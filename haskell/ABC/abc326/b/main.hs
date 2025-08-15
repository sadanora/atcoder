-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.Char
import Data.List

main :: IO ()
main = do
  n <- getInt
  case find is_326_like [n, n+1..919] of
    Just ans -> print ans
    Nothing  -> error "Not found"

is_326_like :: Int -> Bool
is_326_like x = product (take 2 d) == last d
  where d = digits x
digits :: Int -> [Int]
digits = map digitToInt . show

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
