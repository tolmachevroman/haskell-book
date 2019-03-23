module Chapter11.Vehicles
  ( Price(..)
  , Manufacturer(..)
  , Airline(..)
  , Vehicle(..)
  , isCar
  , isPlane
  ) where

--
data Price =
  Price Integer
  deriving (Show, Eq)

data Manufacturer
  = Mini
  | Mazda
  | Tata
  deriving (Show, Eq)

data Airline
  = GOL
  | Avianca
  | SevenAir
  deriving (Show, Eq)

data Vehicle
  = Car Manufacturer
        Price
  | Plane Airline
  deriving (Show, Eq)

--
isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

--
isPlane :: Vehicle -> Bool
isPlane (Plane _) = True
isPlane _ = False
