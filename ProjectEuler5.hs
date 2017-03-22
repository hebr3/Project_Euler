#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"

    putStrLn "\nProblem5 - Smallest multiple of the numbers 1-20"
    print problem5

--Smallest multiple of the numbers 1-20
problem5 = head [x | x <- [1..], mod x 5 == 0,
                                 mod x 7 == 0,
                                 mod x 9 == 0, 
                                 mod x 11 == 0, 
                                 mod x 13 == 0, 
                                 mod x 16 == 0,
                                 mod x 17 == 0,
                                 mod x 19 == 0]