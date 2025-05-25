import qualified Data.ByteString.Char8 as BS
import qualified Data.Vector as V
import Control.Monad

main :: IO ()
main = do
  [h, w] <- getInts
  arr <- replicateM h BS.getLine
  let grid :: V.Vector (V.Vector Char)
      grid = V.fromList $ map (V.fromList . BS.unpack) arr
  print $ V.sum $ V.map (V.length . V.filter (=='#')) grid

getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
toTuple :: [b] -> (b, b)
toTuple [x, y] = (x, y)
