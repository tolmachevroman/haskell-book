module Chapter6.EqInstances(
    TisAnInteger(..)
) where

data TisAnInteger = TisAn Integer

instance Show TisAnInteger where
    show (TisAn a) = show a

instance Eq TisAnInteger where
    (==) (TisAn a) (TisAn a') = a == a'