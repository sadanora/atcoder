-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  getInt
  as <- getInts
  putStrLn $ unwords . map show $ solve as

solve [] = []
solve [x] = [x]
solve (x:y:xs)
  | x < y = x : solve (x + 1 : y : xs)
  | x > y = x : solve (x - 1 : y : xs)
  | otherwise = solve (y:xs)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
