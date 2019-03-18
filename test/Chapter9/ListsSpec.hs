module Chapter9.ListsSpec where

import SpecHelper

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
