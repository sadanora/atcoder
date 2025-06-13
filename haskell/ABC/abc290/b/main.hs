-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  [n, k] <- getInts
  s <- getLine
  putStrLn $ solve k s

solve k s = reverse $ fst $ foldl step ("", 0) s
  where
    step (acc, cnt) c
      | c == 'o' && cnt < k = (c : acc, cnt + 1)
      | otherwise = ('x' : acc, cnt)

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
