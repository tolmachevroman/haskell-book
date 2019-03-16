module Chapter8.Recursion(
    fibonacci,
    dividedBy,
    recSum,
    recMult
) where

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
