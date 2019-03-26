module Chapter11.AsSyntaxSpec where

import SpecHelper

spec :: Spec
spec =
  describe "As syntax" $ do
    it "Subsequence function" $ do
      isSubseqOf "blah" "blahwoot" `shouldBe` True
      isSubseqOf "blah" "wootblah" `shouldBe` True
      isSubseqOf "blah" "wboloath" `shouldBe` True
      isSubseqOf "blah" "wootbla" `shouldBe` False
      isSubseqOf "blah" "halbwoot" `shouldBe` False
