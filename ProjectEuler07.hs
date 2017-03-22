#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"
    putStrLn "\nProblem7 - 10,001th Prime"
    print problem7

--10001th Prime
problem7 = primes!!10000 -- index starts at 0

primes = 2 : primes'
    where isPrime (p:ps) n = p*p > n || n `rem` p /= 0 && isPrime ps n
          primes' = 3 : filter (isPrime primes') [5,7..]