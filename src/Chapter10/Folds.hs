module Chapter10.Folds
  ( funcA
  , funcB
  , funcC
  , myOrWithFolds
  , myAnyWithFolds
  , myElemWithFolds
  , myReverseWithFolds
  , myMapWithFolds
  , myFilterWithFolds
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

-- 4
myOrWithFolds :: [Bool] -> Bool
myOrWithFolds = foldr (||) False

-- 5
myAnyWithFolds :: (a -> Bool) -> [a] -> Bool
myAnyWithFolds f = foldr (\i a -> f i || a) False

-- 6
myElemWithFolds :: Eq a => a -> [a] -> Bool
myElemWithFolds x = foldr (\i a -> i == x || a) False

-- 7
myReverseWithFolds :: [a] -> [a]
myReverseWithFolds = foldr (\i a -> a ++ [i]) []

-- 8
myMapWithFolds :: (a -> b) -> [a] -> [b]
myMapWithFolds f = foldr (\i a -> f i : a) []

-- 9
myFilterWithFolds :: (a -> Bool) -> [a] -> [a]
myFilterWithFolds f =
  foldr
    (\i a ->
       if (f i)
         then i : a
         else a)
    []
