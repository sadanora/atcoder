-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  n <- getInt
  ls <- getInts
  print $ countTriangles ls

countTriangles :: [Int] -> Int
countTriangles xs = length
  [()
  | (a:ys) <- tails xs
  , (b:zs) <- tails ys
  , c <- zs
  , a /= b, b /= c, c /= a
  , isTriangle a b c
  ]
isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c =
  let [x, y, z] = sort [a, b, c]
  in x + y > z

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
