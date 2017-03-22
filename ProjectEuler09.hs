#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"
    putStrLn "Problem9 - Special Pythogorean triplet"
    print problem9
    
problem9 = head triplet

triplet = [a*b*(1000-a-b) | a <- [1..1000], b <- [a..(1000-a)], a^2 + b^2 == (1000-a-b)^2]