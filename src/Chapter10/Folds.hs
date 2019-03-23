module Chapter10.Folds(
    funcA,
    funcB
) where

-- 1
stops = "pbtdkg"
vowels = "aeiou"

funcA = [(a, b, c) | a <- stops, b <- vowels, c <- stops]

-- 2
funcB = [(a, b, c) | a <- stops, b <- vowels, c <- stops, a == 'p']
