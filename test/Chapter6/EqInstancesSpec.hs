module Chapter6.EqInstancesSpec where
    
import SpecHelper    

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