module Chapter6.EqInstances(
    TisAnInteger(..),
    TwoIntegers(..)
) where

-- 1    
data TisAnInteger = TisAn Integer

instance Show TisAnInteger where
    show (TisAn a) = show a

instance Eq TisAnInteger where
    (==) (TisAn a) (TisAn a') = a == a'

-- 2
data TwoIntegers = Two Integer Integer

instance Show TwoIntegers where
    show (Two a a') = show a ++ " " ++ show a'

instance Eq TwoIntegers where
    (==) (Two a a') (Two b b') = a == b && a' == b'    