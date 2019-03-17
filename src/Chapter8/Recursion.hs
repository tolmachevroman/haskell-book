module Chapter8.Recursion(
    fibonacci,
    dividedBy,
    recSum,
    recMult,
    mcCarthy91,
    wordNumber
) where

import           Data.List (intercalate)

-- 1
fibonacci :: Integral a => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

-- 2
type Numerator = Integer
type Denominator = Integer
type Quotient = Integer

dividedBy :: Numerator -> Denominator -> Quotient
dividedBy n d
    | n < 0 = negate $ 1 + dividedBy (negate n - d) d
    | d < 0 = negate $ 1 + dividedBy (n - negate d) (negate d)
    | n < d = 0
    | otherwise = 1 + dividedBy (n - d) d

-- 3
recSum :: (Eq a, Num a) => a -> a
recSum 1 = 1
recSum n = n + recSum (n - 1)

-- 4
recMult :: Integral a => a -> a -> a
recMult n 0 = 0
recMult n m = n + recMult n (m - 1)

-- 5
mcCarthy91 n
    | n  > 100 = n - 10
    | otherwise = 91

-- 6
digitToWord :: Int -> String
digitToWord n =
    case n of
        0 -> "zero"
        1 -> "one"
        2 -> "two"
        3 -> "three"
        4 -> "four"
        5 -> "five"
        6 -> "six"
        7 -> "seven"
        8 -> "eight"
        9 -> "nine"
        _ -> ""

digits :: Int -> [Int]
digits n
    | n < 10 = [n]
    | otherwise = digits (div n 10) ++ [mod n 10]

wordNumber :: Int -> String
wordNumber n = intercalate "-" (map digitToWord (digits n))  