-- stack script --resolver lts-22 --package bytestring --package vector --package containers
{-# OPTIONS_GHC -Wno-unused-top-binds -Wno-incomplete-patterns -Wno-missing-signatures -Wno-unused-matches #-}
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  n <- getInt
  as <- getInts
  printYn $ elem 1000 (map (\(a,b,c) -> a + b + c) $ combinations3 as)

combinations3 xs = [(x, y, z) | (x:ys) <- tails xs
                              , (y:zs) <- tails ys
                              , z <- zs]

{-- IO --}
getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
getInts :: IO [Int]
getInts = toInt <$> BS.getLine
toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
