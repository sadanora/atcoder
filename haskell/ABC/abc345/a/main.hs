import qualified Data.ByteString.Char8 as BS
import Control.Monad
import Data.Bool (bool)
import Data.Char
import Data.List
import Data.Ord
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

main :: IO ()
main = do
  s <- BS.unpack <$> BS.getLine
  putStrLn $ if head s == '<' && last s == '>' && all (=='=') (init (tail s)) then "Yes" else "No"

{-- IO --}
-- getInts :: IO [Int]
-- getInts = toInt <$> BS.getLine
-- getContentsToInt :: IO [Int]
-- getContentsToInt = toInt <$> BS.getContents

-- toInt :: String -> [Int]
-- toInt = map (read . BS.unpack) . BS.words
-- yn :: Bool -> String
-- yn = bool "No" "Yes"
-- printYn :: Bool -> IO ()
-- printYn = putStrLn . yn
