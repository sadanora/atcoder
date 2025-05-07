import Data.Bool (bool)
import Data.List

main :: IO ()
main = do
  [aS, opS, bS] <- words <$> getLine
  let a = read aS :: Int
      b = read bS :: Int
  print $ parseOp opS a b

parseOp :: Num a => String -> a -> a -> a
parseOp "+" = (+)
parseOp "-" = (-)

{-- IO --}
getInt :: IO Int
getInt = readLn
getInts :: IO [Int]
getInts = toInt <$> getLine
getContentsToInt :: IO [Int]
getContentsToInt = toInt <$> getContents

toInt :: String -> [Int]
toInt = map (read :: String -> Int) . words

yn :: Bool -> String
yn = bool "No" "Yes"
printYn :: Bool -> IO ()
printYn = putStrLn . yn
