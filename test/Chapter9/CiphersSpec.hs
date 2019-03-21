module Chapter9.CiphersSpec where

import           SpecHelper

spec :: Spec
spec = describe "lists exercises" $ do
        it "acronym" $ do
            acronym "United Nations" `shouldBe` "UN"
        it "Ceasar encryption" $ do
            ceasar 3 "abc" `shouldBe` "def"
            ceasar 3 "xyz" `shouldBe` "abc"
            ceasar (-3) "abc" `shouldBe` "xyz"