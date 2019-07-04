module Main where
import Lib
import System.Environment

main :: IO ()
main = getArgs >>= command
command [] = do
  name <- getProgName
  putStrLn $ name ++ " <number>"
command ["version"] =
  putStrLn "factorial v1.0.0"
command [arg] =
  let number = read arg :: Integer in
    print $ factorial number
