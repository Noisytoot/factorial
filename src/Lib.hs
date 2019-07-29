module Lib (factorial, recursiveFactorial) where
import Numeric.Natural

-- |Factorial using product
factorial :: Natural -> Natural
factorial n = product [1..n]

-- |Factorial using recursion
recursiveFactorial :: Natural -> Natural
recursiveFactorial 0 = 1
recursiveFactorial n = n * recursiveFactorial (n - 1)
