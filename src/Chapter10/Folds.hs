module Chapter10.Folds(
    funcA,
    funcB,
    funcC
) where

-- 1
stops = "pbtdkg"
vowels = "aeiou"

funcA = [(a, b, c) | a <- stops, b <- vowels, c <- stops]

-- 2
funcB = [(a, b, c) | a <- stops, b <- vowels, c <- stops, a == 'p']

-- 3
words' = ["table", "ball", "chair"]
verbs = ["to sit", "to kick", "to wash"]

funcC = [(a, b, c) | a <- words', b <- verbs, c <- words']
