#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"
    putStrLn "\nProblem6 - Sum sqaure difference for the first 100 natural numbers"
    print problem6

--Sum square difference
problem6 = sqSum - sumSq

sq x = x * x

sqSum = sq (sum [1..100])
sumSq = sum (map sq [1..100])