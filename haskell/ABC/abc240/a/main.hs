import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  [a, b] <- getInts
  printYn $ (a - b) `mod` 10 == 1 || (b - a) `mod` 10 == 1

{-- IO --}
getInts :: IO [Int]
getInts = toInt <$> BS.getLine

toInt :: BS.ByteString -> [Int]
toInt = map (read . BS.unpack) . BS.words

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
