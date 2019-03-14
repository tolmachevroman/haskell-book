module Chapter7.PatternMatchingSpec where

import           SpecHelper

spec :: Spec
spec = describe "Pattern matching exercises" $ do
        it "functionC using cases" $ functionC 5 10 `shouldBe` 10
        it "functionC using cases" $ functionC 'c' 'a' `shouldBe` 'c'
        it "ifEvenAdd2 using cases" $ ifEvenAdd2 2 `shouldBe` 4
        it "ifEvenAdd2 using cases" $ ifEvenAdd2 1 `shouldBe` 1
        it "num using cases" $ num 10 `shouldBe` 1
        it "num using cases" $ num (-3) `shouldBe` (-1)
        it "num using cases" $ num 0 `shouldBe` 0
