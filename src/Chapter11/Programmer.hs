module Chapter11.Programmer
  ( allProgrammers
  , OperatingSystem(..)
  , Language(..)
  , Programmer(..)
  ) where

--
data OperatingSystem
  = GnuPlusLinux
  | OpenBSD
  | Mac
  | Windows
  deriving (Eq, Ord, Enum, Show)

data Language
  = Haskell
  | Agda
  | Idris
  | PureScript
  deriving (Eq, Ord, Enum, Show)

data Programmer = Programmer
  { os :: OperatingSystem
  , language :: Language
  } deriving (Eq, Show)

--
allProgrammers :: [Programmer]
allProgrammers =
  [ Programmer os language
  | os <- enumFrom GnuPlusLinux
  , language <- enumFrom Haskell
  ]
