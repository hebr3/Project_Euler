#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"

    putStrLn "\nProblem3 - Largest prime factor of 600851475143"
    print problem3

--Largest prime factor of 600851475143
problem3 = last (factors 600851475143)

primes = 2 : primes'
    where isPrime (p:ps) n = p*p > n || n `rem` p /= 0 && isPrime ps n
          primes' = 3 : filter (isPrime primes') [5,7..]

floor_sqrt_int = floor . sqrt . fromIntegral

factors :: Int -> [Int]
factors n = [x | x <- (takeWhile (< (floor_sqrt_int n)) primes), mod n x == 0]