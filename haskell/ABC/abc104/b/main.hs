main :: IO ()
main = do
  s <- getLine
  putStrLn $ if all (\f -> f s) [isHeadA, isContaineC, countDownCase] then "AC" else "WA"

isHeadA :: String -> Bool
isHeadA s = head s == 'A'
isContaineC :: String -> Bool
isContaineC s =
  let e = length s - 3
  in 'C' `elem` slice 2 e s
countDownCase :: String -> Bool
countDownCase s = length (removeUpperCase s) == length s-2
removeUpperCase :: String -> String
removeUpperCase str = [ c | c <- str, c `elem` ['a'..'z']]
slice :: Int -> Int -> [a] -> [a]
slice start length str = take length $ drop start str
