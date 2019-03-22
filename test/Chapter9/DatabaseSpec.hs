module Chapter9.DatabaseSpec where

import           Data.Time (UTCTime (..), fromGregorian, secondsToDiffTime)
import           SpecHelper

spec :: Spec
spec = describe "Database with folds exercises" $ do
        it "filters dates" $ do
            filterDbDate theDatabase `shouldBe` [
                UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34211),
                UTCTime (fromGregorian 1921 7 8) (secondsToDiffTime 34211)
                ]
        it "filters numbers" $ do
	    filterDbNumber theDatabase `shouldBe` [9001]
        it "finds most recent date" $ do
            mostRecent theDatabase `shouldBe` UTCTime (fromGregorian 1921 7 8) (secondsToDiffTime 34211)
	    mostRecent [] `shouldBe` UTCTime (fromGregorian 0 0 0) (secondsToDiffTime 0)
