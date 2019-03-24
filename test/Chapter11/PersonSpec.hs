module Chapter11.PersonSpec where

import SpecHelper

james = Person "james" 21

spec :: Spec
spec =
  describe "Record syntax" $ do
    it "Person data" $ do
      name james `shouldBe` "james"
      age james `shouldBe` 21
