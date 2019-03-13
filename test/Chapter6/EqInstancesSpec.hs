module Chapter6.EqInstancesSpec where

import           SpecHelper

spec :: Spec
spec = describe "Instances exercises" $ do
        it "TisAnInteger is an instance of Eq and Show" $ TisAn 5 `shouldBe` TisAn 5
        it "TwoIntegers is an instance of Eq and Show" $ Two 5 10 `shouldBe` Two 5 10
        it "StringOrInt is an instance of Eq and Show" $ do
            TisAnInt 3 `shouldBe` TisAnInt 3
            TisAString "bla" `shouldBe` TisAString "bla"
        it "Pair is an instance of Eq and Show" $ do
            Pair 5 10 `shouldBe` Pair 5 10
            Pair 'c' 'b' `shouldBe` Pair 'c' 'b'
        it "Tuple is an instance of Eq and Show" $ do
            Tuple 5 'b' `shouldBe` Tuple 5 'b'
            Tuple "hello" True `shouldBe` Tuple "hello" True
        it "Which is an instance of Eq and Show" $ do
            ThisOne 'b' `shouldBe` ThisOne 'b'
            ThatOne "hello" `shouldBe` ThatOne "hello"
        it "EitherOr is an instance of Eq and Show" $ do
            (Hello 'b' :: EitherOr Char Int) `shouldBe` (Hello 'b' :: EitherOr Char Int)
            (Goodbye "hello" :: EitherOr Int String) `shouldBe` (Goodbye "hello" :: EitherOr Int String)
        it "DayOfWeekFridayTheBest is an instance of Ord" $ do
            compare Fri Mon `shouldBe` GT
            compare Fri Fri `shouldBe` EQ
        it "Papu is an instance of Eq, Ord and Show" $ do
            Papu (Rocks "ko") (Yeah True) `shouldBe` Papu (Rocks "ko") (Yeah True)
            compare (Papu (Rocks "ko") (Yeah True)) (Papu (Rocks "ko") (Yeah False)) `shouldBe` GT

