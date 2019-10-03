module Lib (factorial, recursiveFactorial, foldrFactorial) where
import Numeric.Natural

-- |Factorial using product
factorial :: Natural -> Natural
factorial n = product [1..n]

-- |Factorial using recursion
recursiveFactorial :: Natural -> Natural
recursiveFactorial 0 = 1
recursiveFactorial n = n * recursiveFactorial (n - 1)

-- |Factorial using foldr
foldrFactorial :: Natural -> Natural
foldrFactorial n = foldr (*) 1 [1..n]
