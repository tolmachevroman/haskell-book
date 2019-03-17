module Chapter8.RecursionSpec where

import           SpecHelper

spec :: Spec
spec = describe "Recursion exercises" $ do
        it "fibonacci nth number" $ do
            fibonacci 2 `shouldBe` 1
            fibonacci 5 `shouldBe` 5
            fibonacci 6 `shouldBe` 8
            fibonacci 7 `shouldBe` 13
        it "dividing in terms of subtraction" $ do
            dividedBy 10 5 `shouldBe` 2
            dividedBy 5 10 `shouldBe` 0
            dividedBy 13 4 `shouldBe` 3
            dividedBy 10 (-2) `shouldBe` (-5)
            dividedBy (-10) (-2) `shouldBe` 5
            dividedBy (-10) 2 `shouldBe` (-5)
        it "recursive sum from 1 to n" $ do
            recSum 5 `shouldBe` 15
            recSum 6 `shouldBe` 21
            recSum 2 `shouldBe` 3
        it "recursive multiplication" $ do
            recMult 5 3 `shouldBe` 15
            recMult 3 5 `shouldBe` 15
            recMult 2 0 `shouldBe` 0
            recMult 0 3 `shouldBe` 0
        it "McCarthy91 function" $ do
            map mcCarthy91 [98..101] `shouldBe` [91, 91, 91, 91]
            map mcCarthy91 [95..110] `shouldBe` [91,91,91,91,91,91,91,92,93,94,95,96,97,98,99,100]
        it "wordNumber function" $ do
            wordNumber 1234 `shouldBe` "one-two-three-four"
            wordNumber 453 `shouldBe` "four-five-three"
