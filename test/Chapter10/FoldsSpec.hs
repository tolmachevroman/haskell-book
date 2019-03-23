module Chapter10.FoldsSpec where

import           SpecHelper

spec :: Spec
spec = describe "Folds exercises" $ do
        it "3 tuple of stops and vowels" $ do
            funcA !! 0 `shouldBe` ('p', 'a', 'p')
            funcA !! 1 `shouldBe` ('p', 'a', 'b')
            funcB !! 10 `shouldBe` ('p', 'e', 'k')
            funcC !! 0 `shouldBe` ("table", "to sit", "table")
