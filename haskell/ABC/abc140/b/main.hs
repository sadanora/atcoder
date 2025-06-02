-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V

main :: IO ()
main = do
  n <- getInt
  as <- getInts
  bs <- V.fromList . toInt <$> BS.getLine
  cs <- V.fromList . toInt <$> BS.getLine
  let pairs = [-1, head as] : zipWith (\x y -> [x, y]) as (tail as)
  print $ sum $ map (\[x, y] -> if (y - x) == 1 then (bs V.! (y - 1)) + (cs V.! (x - 1)) else bs V.! (y - 1)) pairs

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
