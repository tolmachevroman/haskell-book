module Chapter6.EqInstancesSpec where
    
import SpecHelper    

spec :: Spec
spec = describe "Instances exercises" $
        it "TisAnInteger is an instances of Eq and Show" $ TisAn 5 `shouldBe` TisAn 5 