module Chapter7.PatternMatchingSpec where

import           SpecHelper

spec :: Spec
spec = describe "Pattern matching exercises" $ do
        it "functionC using cases" $ do
            functionC 5 10 `shouldBe` 10
            functionC 'c' 'a' `shouldBe` 'c'
        it "ifEvenAdd2 using cases" $ do
            ifEvenAdd2 2 `shouldBe` 4
            ifEvenAdd2 1 `shouldBe` 1
        it "num using cases" $ do 
            num 10 `shouldBe` 1
            num (-3) `shouldBe` (-1)
            num 0 `shouldBe` 0
        it "foldBool using cases" $ do 
            foldBool 0 2 True `shouldBe` 0
            foldBool 0 2 False `shouldBe` 2
        it "foldBool2 using guards" $ do 
            foldBool 0 2 True `shouldBe` 0
            foldBool 0 2 False `shouldBe` 2
        it "g completed" $ g (+1) (2, 3) `shouldBe` (3, 3)
