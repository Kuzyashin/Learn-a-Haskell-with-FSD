module Learn where

doubleFact :: Integer -> Integer
doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = if n < 0 then error "must be pos" else n * doubleFact (n-2)