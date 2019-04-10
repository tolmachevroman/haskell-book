{-# LANGUAGE ViewPatterns #-}

module Chapter17.ApplicativeSpec where

import Data.Monoid
import SpecHelper
import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes

spec :: Spec
spec =
  describe "Person constructor using Applicative" $ do
    it "Valid username" $ do
      mkPerson "Jake" "Baker St. 10" `shouldBe`
        Just (Person' (Name "Jake") (Address "Baker St. 10"))
    it "Invalid username" $ do
      mkPerson "Very large large large large user name" "Baker St. 10" `shouldBe`
        Nothing
