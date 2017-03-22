#!/usr/bin/env stack
-- stack runghc

main :: IO ()
main = do
    putStrLn "ProjectEuler.net"
    putStrLn "\nProblem4 - Largest palindrome made from the product of two 3-digit numbers"
    print problem4

--Largest palindrome made from the product of two 3-digit numbers
problem4 = maximum productList

palindromeCheck :: Int -> Bool
palindromeCheck n = palindrome (digits n)

palindrome :: [Int] -> Bool
palindrome n
    | n == [] = True
    | length n == 1 = True
    | (head n) /= (last n) = False
    | otherwise = (palindrome (init (tail n)))

digits :: Int -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

productList = [x*y | x <- [999, 998..100], y <- [999, 998..100], (palindromeCheck (x*y))]