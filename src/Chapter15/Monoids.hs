module Chapter15.Monoids where

data Optional a
  = Nada
  | Only a
  deriving (Eq, Show)

instance Semigroup a => Semigroup (Optional a) where
  Nada <> (Only x) = Only x
  (Only x) <> Nada = Only x
  (Only x) <> (Only y) = Only (x <> y)
  Nada <> Nada = Nada

instance Monoid a => Monoid (Optional a) where
  mempty = Nada
