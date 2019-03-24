module Chapter11.Person
  ( Person(..)
  ) where

--
data Person = Person
  { name :: String
  , age :: Int
  } deriving (Eq, Show)
