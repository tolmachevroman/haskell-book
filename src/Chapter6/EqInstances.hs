module Chapter6.EqInstances(
    TisAnInteger(..),
    TwoIntegers(..),
    StringOrInt(..),
    Pair(..),
    Tuple(..),
    Which(..),
    EitherOr(..),
    DayOfWeekFridayTheBest(..)
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

-- 3
data StringOrInt = TisAnInt Int | TisAString String deriving Show

instance Eq StringOrInt where
    (==) (TisAnInt a) (TisAnInt a')     = a == a'
    (==) (TisAString b) (TisAString b') = b == b'

 -- 4
data Pair a = Pair a a deriving Show

instance Eq a => Eq (Pair a) where
    (==) (Pair a a') (Pair b b') = a == b && a' == b'

-- 5
data Tuple a b = Tuple a b deriving Show

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a a') (Tuple b b') = a == b && a' == b'

-- 6
data Which a = ThisOne a | ThatOne a deriving Show

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne b) (ThatOne b') = b == b'

-- 7
data EitherOr a b = Hello a | Goodbye b deriving Show

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello a')     = a == a'
    (==) (Goodbye b) (Goodbye b') = b == b'

-- 8
data DayOfWeekFridayTheBest = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Eq, Show)

instance Ord DayOfWeekFridayTheBest where
    compare Fri Fri = EQ
    compare Fri _   = GT
    compare _ Fri   = LT
    compare _ _     = EQ
