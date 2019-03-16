module Chapter8.RecursionSpec where

import           SpecHelper

spec :: Spec
spec = describe "Recursion exercises" $ do
        it "fibonacci nth number" $ do
            fibonacci 2 `shouldBe` 1
            fibonacci 5 `shouldBe` 5
            fibonacci 6 `shouldBe` 8
            fibonacci 7 `shouldBe` 13
