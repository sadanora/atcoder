{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  a <- getInt
  b <- getInt
  print $ a*b

getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
