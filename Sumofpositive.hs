positiveSum :: [Int] -> Int
positiveSum n | null n = 0
              | otherwise = sum [x|x<-n,x>0]