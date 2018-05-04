seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n > 2  =   let
                     recurrent acc1 acc2 acc3 0 = acc1
                     recurrent acc1 acc2 acc3 n = recurrent acc2 acc3 ((acc3 + acc2) - 2*acc1) (n-1)
                    in recurrent 1 2 3 n