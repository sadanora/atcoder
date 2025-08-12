-- stack script --resolver lts-22 --package bytestring --package vector --package containers
import qualified Data.ByteString.Char8 as BS
import Data.Bool (bool)

main :: IO ()
main = do
  n <- getInt
  s <- getLine
  printYn $ (drop (n - 3) s) == "tea"

getInt :: IO Int
getInt = read . BS.unpack <$> BS.getLine
yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
