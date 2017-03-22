#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"
    putStrLn "Problem1 - Sum of the natural numbers below 1000 that are multiplies of 3 or 5"
    print problem1

--Sum of the natural numbers below 1000 that are multiplies of 3 or 5
problem1 = sum [x | x <- [1..999], mod x 3 == 0 || mod x 5 == 0]