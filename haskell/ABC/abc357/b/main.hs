import Data.Char
main :: IO ()
main = do
  s <- getLine
  let uc = length $ [x | x <- s, isUpper x]
  let lc = length $ [x | x <- s, isLower x]
  putStrLn $ if lc < uc then map toUpper s else map toLower s
