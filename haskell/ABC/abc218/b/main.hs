-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Data.List

main :: IO ()
main = do
  ps <- getInts
  let as = zip [1..26] ['a'..'z']
  putStrLn . solve ps $ as

solve [] _ = []
solve (p:ps) as = case find (\(x, _) -> x == p) as of
  Just (_, y) -> y : solve ps as
  Nothing -> error "not found"

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
