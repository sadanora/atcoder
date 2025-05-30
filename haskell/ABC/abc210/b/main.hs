{-# OPTIONS_GHC -Wno-unused-top-binds #-}
import qualified Data.ByteString.Char8 as BS
import Control.Monad

main :: IO ()
main = do
  n <- getInt
  s <- getLine
  putStrLn $ solve $ zip s [1..n]

solve ((c, i):xs)
  | c == '0' = solve xs
  | c == '1' = if even i then "Aoki" else "Takahashi"

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
