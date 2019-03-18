module Chapter9.ListsSpec where

import           SpecHelper

spec :: Spec
spec = describe "lists exercises" $ do
        it "acronym" $ do
            acro "United Nations" `shouldBe` "UN"
            acro "North American Free Trade Agreement" `shouldBe` "NAFTA"
