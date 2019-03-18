module Chapter9.ListsSpec where

import           SpecHelper

spec :: Spec
spec = describe "lists exercises" $ do
        it "acronym" $ do
            acronym "United Nations" `shouldBe` "UN"
            acronym "North American Free Trade Agreement" `shouldBe` "NAFTA"
        it "tuples from lists" $ do
            tuplesFromLists !! 0 `shouldBe` (1, 1)
            tuplesFromLists !! 1 `shouldBe` (1, 8)
