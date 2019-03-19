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
        it "multiplies of 3" $ do
            multipliesOf3 [0..10] `shouldBe` [0, 3, 6, 9]
        it "articles filter" $ do
            articlesFilter "the Moon" `shouldBe` ["Moon"]
            articlesFilter "the brown dog was a goof" `shouldBe` ["brown","dog","was","goof"]
        it "my zip function" $ do
            zip' [1..3] [1..5] `shouldBe` [(1, 1), (2, 2), (3, 3)]
            zip' ['a'..'d'] [1..5] `shouldBe` [('a', 1), ('b', 2), ('c', 3), ('d', 4)]
        it "my zipWith function" $ do
            zipWith' (+) [1..3] [1..5] `shouldBe` [2, 4, 6]
            zipWith' (>) "hello" "non" `shouldBe` [False, False, False]
        it "filter upper cases" $ do
            filterUpperCases "Hello World" `shouldBe` "HW"
            filterUpperCases "HbEfLrLxO" `shouldBe` "HELLO"
        it "capitalizing first letter and whole word" $ do
            capitalizeString "julie" `shouldBe` "Julie"
            capitalizeWholeString "julie" `shouldBe` "JULIE"
            justFirstLetterCapitalized "julie" `shouldBe` "J"
        it "standard functions re-implementation" $ do
            myOr [True, False, True] `shouldBe` True
            myOr [False, False, False] `shouldBe` False
            myOr [True, True] `shouldBe` True
            myAny even [1, 2, 3] `shouldBe` True
            myAny even [1, 3] `shouldBe` False
            myElem 1 [1, 3] `shouldBe` True
            myElem 'a' "Hello" `shouldBe` False
