module Chapter9.Lists(
    acronym,
    tuplesFromLists,
    multipliesOf3,
    articlesFilter,
    zip',
    zipWith',
    filterUpperCases,
    capitalizeString,
    capitalizeWholeString,
    justFirstLetterCapitalized,
    myOr,
    myAny,
    myElem,
    myReverse,
    squish,
    squishMap,
    squishAgain,
    myMaximumBy
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
capitalizeString []     = []
capitalizeString (x:xs) = toUpper x : xs

-- 9
capitalizeWholeString []     = []
capitalizeWholeString (x:xs) = toUpper x : capitalizeWholeString xs

-- 10
justFirstLetterCapitalized :: String -> String
justFirstLetterCapitalized [] = []
justFirstLetterCapitalized xs = [toUpper . head $ xs]

-- 11
myOr :: [Bool] -> Bool
myOr []     = False
myOr (x:xs) = x || myOr xs

-- 12
myAny :: (a -> Bool) -> [a] -> Bool
myAny f []     = False
myAny f (x:xs) = f x || myAny f xs

-- 13
myElem :: Eq a => a -> [a] -> Bool
myElem a []     = False
myElem a (x:xs) = a == x || myElem a xs

-- 14
myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

-- 15
squish :: [[a]] -> [a]
squish [xs] = xs

-- 16
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs = squish $ map f xs

-- 17
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- 18
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [x] = x
myMaximumBy f (x:xs) = compare' f x (myMaximumBy f xs) where
    compare' f x1 x2 = if f x1 x2 == LT then x2 else x1
