module Chapter9.Lists(
    acronym,
    tuplesFromLists,
    multipliesOf3,
    articlesFilter,
    zip',
    zipWith',
    filterUpperCases,
    capitalizeString
) where

import           Data.Char

-- 1
acronym xs = [x | x <- xs, x `elem` ['A'..'Z'] ]

-- 2
mySquare = [x^2 | x <- [1..5]]
myCube   = [y^3 | y <- [1..5]]

tuplesFromLists = [(x, y) | x <- mySquare, y <- myCube]

-- 3
multipliesOf3 xs = [x | x <- xs, x `rem` 3 == 0]

-- 4
articlesFilter sentence = [word | word <- words sentence, word `notElem` ["the", "a", "an"]]

-- 5
zip' :: [a] -> [b] -> [(a, b)]
zip' _ []          = []
zip' [] _          = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

-- 6
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f _ []          = []
zipWith' f [] _          = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- 7
filterUpperCases = filter isUpper

-- 8
capitalizeString [] = []
capitalizeString (x:xs) = toUpper x : xs