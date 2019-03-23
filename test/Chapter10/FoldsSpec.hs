module Chapter10.FoldsSpec where

import           SpecHelper

spec :: Spec
spec = describe "Folds exercises" $ do
        it "3 tuple of stops and vowels" $ do
            funcA !! 0 `shouldBe` ('p', 'a', 'p')
            funcA !! 1 `shouldBe` ('p', 'a', 'b')
            funcB !! 10 `shouldBe` ('p', 'e', 'k')
            funcC !! 0 `shouldBe` ("table", "to sit", "table")
        it "standard functions using folds" $ do
            myOrWithFolds [False, True] `shouldBe` True
            myAnyWithFolds (< 0) [1..5] `shouldBe` False
            myAnyWithFolds even [1..5] `shouldBe` True
            myElemWithFolds 1 [1..5] `shouldBe` True
            myElemWithFolds 'a' "Hello" `shouldBe` False
            myReverseWithFolds [1..3] `shouldBe` [3, 2, 1]
            myReverseWithFolds "hey" `shouldBe` "yeh" 
