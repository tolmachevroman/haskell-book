module Chapter15.MonoidsSpec where

import Data.Monoid
import SpecHelper

spec :: Spec
spec =
  describe "Monoid instances" $ do
    it "Monoid instance of Optional" $ do
      Only (Sum 1) <> Only (Sum 2) `shouldBe` Only (Sum 3)
      Only (Product 4) <> Only (Product 5) `shouldBe` Only (Product 20)
      Only (Sum 1) <> Nada `shouldBe` Only (Sum 1)
      Only [1] <> Nada `shouldBe` Only [1]
