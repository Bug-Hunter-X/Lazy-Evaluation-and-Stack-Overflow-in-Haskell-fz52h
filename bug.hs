The following Haskell code attempts to perform lazy evaluation with an infinite list, but it leads to stack overflow because the `length` function forces the evaluation of the entire list before returning a result.
```haskell
import Data.List (length)

main :: IO ()
main = do
  let infiniteList = [1..]  -- Infinite list of integers
  print (length infiniteList) -- This will cause stack overflow
```