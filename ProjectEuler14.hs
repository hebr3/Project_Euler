#!/usr/bin/env stack
-- stack runghc

import Data.Time

main :: IO ()
main = do
    startTime <- getZonedTime
    putStrLn "ProjectEuler.net"
    putStrLn "Problem14 - Longest Collatz sequence"
    print problem14
    stopTime <- getZonedTime
    print startTime
    print stopTime

problem14 = foldr (\x y -> if ((snd x) > (snd y)) then x else y) (0,0) collatzLengths

collatzLengths = map (\x -> (last x, length x)) collatzChainList

collatzChainList = map collatzChain [800000..900000]

collatzChain :: Int -> [Int]
collatzChain 1 = [1]
collatzChain n = collatzIter [n]
    
collatzIter :: [Int] -> [Int]
collatzIter (x:xs)
    | x == 1 = xs
    | even x = collatzIter ((quot x 2) : x : xs)
    | otherwise = collatzIter ((3*x + 1) : x : xs)
