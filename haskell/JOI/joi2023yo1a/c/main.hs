-- stack script --resolver lts-22 --package bytestring --package vector
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  _ <- getInt
  xs <- getLine
  print $ snd $ foldl solve (1, 0) xs

solve (c, res) x
  | x == 'L' = case c of
    1 -> (1, res)
    2 -> (1, res)
    3 -> (2, res)
    _ -> (c, res)
  | x == 'R' = case c of
    1 -> (2, res)
    2 -> (3, res+1)
    3 -> (3, res+1)
    _ -> (c, res)
  | otherwise = (c, res)

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
