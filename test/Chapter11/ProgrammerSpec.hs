module Chapter11.ProgrammerSpec where

import SpecHelper

spec :: Spec
spec =
  describe "Record syntax in list comprehension" $ do
    it "Programmers list" $ do
      length allProgrammers `shouldBe` 16
      allProgrammers !! 0 `shouldBe`
        Programmer {os = GnuPlusLinux, language = Haskell}
