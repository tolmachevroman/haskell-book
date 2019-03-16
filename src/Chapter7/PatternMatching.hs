module Chapter7.PatternMatching(
    functionC,
    ifEvenAdd2,
    num,
    foldBool,
    foldBool2,
    g
) where

-- 1
functionC x y =
    case x > y of
        True  -> x
        False -> y

-- 2
ifEvenAdd2 n =
    case even n of
        True  -> n + 2
        False -> n

-- 3
num n =
    case compare n 0 of
        LT -> -1
        GT -> 1
        EQ -> 0
-- 4
foldBool :: a -> a -> Bool -> a
foldBool x y c =
    case c of
        True  -> x
        False -> y

-- 4
foldBool2 :: a -> a -> Bool -> a
foldBool2 x y c
    | c = x
    | otherwise = y

-- 5
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)