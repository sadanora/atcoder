-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  n <- getInt
  putStrLn . unwords . map show . sieve $ [2..n]

sieve [] = []
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
