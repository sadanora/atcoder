-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  getInt
  as <- getInts
  print . maximum . solve $ as

solve = map length . foldr step []
  where
    step x [] = [[x]]
    step x (ys@(y:_) : rest)
      | x <= y = (x:ys) : rest
      | otherwise = [x] : ys : rest

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
