module Chapter9.Database(
    theDatabase,
    filterDbDate
) where

import           Data.Time (UTCTime (..), fromGregorian, secondsToDiffTime)

data DatabaseItem = DbString String | DbNumber Integer | DbDate UTCTime deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = [
    DbDate(UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34211)),
    DbNumber 9001,
    DbString "Hello World",
    DbDate (UTCTime (fromGregorian 1921 7 8) (secondsToDiffTime 34211))
    ]

-- 1
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr (\i a -> filter' i ++ a ) [] where
    filter' (DbDate t) = [t]
    filter' _          = []
