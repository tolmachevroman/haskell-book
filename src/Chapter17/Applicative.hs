module Chapter17.Applicative where

validateLength :: Int -> String -> Maybe String
validateLength maxLength s =
  if (maxLength < length s)
    then Nothing
    else Just s

newtype Name =
  Name String
  deriving (Eq, Show)

newtype Address =
  Address String
  deriving (Eq, Show)

mkName :: String -> Maybe Name
mkName name = fmap Name $ validateLength 25 name

mkAddress :: String -> Maybe Address
mkAddress address = fmap Address $ validateLength 100 address

data Person' =
  Person' Name
          Address
  deriving (Eq, Show)

mkPerson :: String -> String -> Maybe Person'
mkPerson name address = Person' <$> mkName name <*> mkAddress address
