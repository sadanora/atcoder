{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad
import Data.Char

main :: IO ()
main = do
  arr <- replicateM 8 BS.getLine
  let grid = V.fromList $ map (V.fromList . BS.unpack) arr
      Just (i, j) = findAsterisk grid
      col = chr (ord 'a' + j)
      row = 8 - i
  putStrLn $ col : show row

findAsterisk :: V.Vector (V.Vector Char) -> Maybe (Int, Int)
findAsterisk grid = do
  i <- V.findIndex (V.elem '*') grid
  let Just j = V.elemIndex '*' (grid V.! i)
  return (i, j)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
