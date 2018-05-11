module Learn where

    factorial 0 = 1
    factorial n | n < 0 = error "must be pos"
                | n > 0 = n * factorial (n-1)