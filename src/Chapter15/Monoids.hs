module Chapter15.Monoids where

import Test.QuickCheck
import Test.QuickCheck.Checkers

--
data Optional a
  = Nada
  | Only a
  deriving (Eq, Show)

instance Eq a => EqProp (Optional a) where
  (=-=) = eq

instance Semigroup a => Semigroup (Optional a) where
  Nada <> (Only x) = Only x
  (Only x) <> Nada = Only x
  (Only x) <> (Only y) = Only (x <> y)
  Nada <> Nada = Nada

instance Monoid a => Monoid (Optional a) where
  mempty = Nada

--
newtype First' a = First'
  { getFirst' :: Optional a
  } deriving (Eq, Show)

instance Arbitrary a => Arbitrary (Optional a) where
  arbitrary = oneof [return $ Nada, Only <$> arbitrary]

instance Arbitrary a => Arbitrary (First' a) where
  arbitrary = First' <$> arbitrary

instance Eq a => EqProp (First' a) where
  (=-=) = eq

instance Semigroup (First' a) where
  First' Nada <> First' (Only x) = First' (Only x)
  First' Nada <> First' Nada = First' Nada
  First' (Only x) <> First' Nada = First' (Only x)
  First' (Only x) <> First' (Only y) = First' (Only x)

instance Monoid (First' a) where
  mempty = First' $ Nada

--
data Three a b c =
  Three a
        b
        c
  deriving (Eq, Show)

instance Functor (Three a b) where
  fmap f (Three a b c) = Three a b (f c)

instance (Arbitrary a, Arbitrary b, Arbitrary c) =>
         Arbitrary (Three a b c) where
  arbitrary = Three <$> arbitrary <*> arbitrary <*> arbitrary

instance (Eq a, Eq b, Eq c) => EqProp (Three a b c) where
  (=-=) = eq

--
data Possibly a
  = LolNope
  | Yeppers a
  deriving (Eq, Show)

instance Functor Possibly where
  fmap f LolNope = LolNope
  fmap f (Yeppers a) = Yeppers (f a)

instance Arbitrary a => Arbitrary (Possibly a) where
  arbitrary = oneof [return $ LolNope, Yeppers <$> arbitrary]

instance Eq a => EqProp (Possibly a) where
  (=-=) = eq

--
data SumF a b
  = First a
  | Second b
  deriving (Eq, Show)

instance Functor (SumF a) where
  fmap f (First a) = First a
  fmap f (Second b) = Second (f b)

instance (Arbitrary a, Arbitrary b) => Arbitrary (SumF a b) where
  arbitrary = oneof [First <$> arbitrary, Second <$> arbitrary]

instance (Eq a, Eq b) => EqProp (SumF a b) where
  (=-=) = eq
