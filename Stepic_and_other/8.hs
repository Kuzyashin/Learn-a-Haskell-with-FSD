module Fiba where

    fibonacci n | n == 0 = 1
                | n == 1 = 1
                | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
                | n < 0 = fibonacci (n + 2) - fibonacci (n + 1)

    fibonacciAcc n = helper 0 1 n           
        where helper curr prev n
                | n == 0   = curr
                | n > 0    = helper (curr+prev) curr (n-1)
                | n < 0    = helper prev (curr-prev) (n+1)