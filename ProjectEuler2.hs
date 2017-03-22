#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"

    putStrLn "\nProblem2 - Sum of the even Fibonacci numbers less than 4,000,000"
    print problem2
    --print sumFibs

--Sum of the even Fibonacci numbers less than 4,000,000
problem2 = sum [fib x | x <- [1..100], mod (fib x) 2 == 0, (fib x) < 4000000]

fib n = fib_iter 1 0 n

fib_iter a b 0 = b
fib_iter a b count = fib_iter (a + b) a (count - 1)

--Test with infinite list of Fibonacci numbers
--fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

--fibsList = takeWhile (<4000000) fibs
--evenFibs = filter even fibsList
--sumFibs = sum evenFibs