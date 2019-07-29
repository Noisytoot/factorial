module Main (main) where
import Lib
import System.Environment
import Numeric.Natural

main :: IO ()
main = getArgs >>= command

command :: [String] -> IO ()
command [] = do
  name <- getProgName
  putStr $ unlines [name ++ " <number> -- Factorial using product",
                    name ++ " recursive <number> -- Factorial using recursion",
                    name ++ " version -- Get version number"]
command ["version"] =
  putStrLn "factorial v1.0.1"
command [arg] =
  if read arg < 0 then
    error "Number must be positive"
  else
    let number = read arg :: Natural in
      print $ factorial number
command ["recursive", arg] =
  if read arg < 0 then
    error "Number must be positive"
  else
    let number = read arg :: Natural in
      print $ recursiveFactorial number
