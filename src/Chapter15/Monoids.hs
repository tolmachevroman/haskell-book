module Chapter15.Monoids where

import Test.QuickCheck
import Test.QuickCheck.Checkers

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
