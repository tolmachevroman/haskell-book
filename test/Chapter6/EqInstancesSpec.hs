module Chapter6.EqInstancesSpec where
    
import SpecHelper    

spec :: Spec
spec = describe "Instances exercises" $ do
        it "TisAnInteger is an instance of Eq and Show" $ TisAn 5 `shouldBe` TisAn 5
        it "TwoIntegers is an instance of Eq and Show" $ Two 5 10 `shouldBe` Two 5 10