module Chapter11.VehiclesSpec where

import SpecHelper

-- test data
mazda = (Car Mazda (Price 1000))

mini = (Car Mini (Price 1000))

avianca = (Plane Avianca)

mazdaAndMini = [mazda, mini]

spec :: Spec
spec =
  describe "Vehicles exercises" $ do
    it "Data types" $ do
      isCar mazda `shouldBe` True
      isCar avianca `shouldBe` False
      isPlane mini `shouldBe` False
      isPlane avianca `shouldBe` True
      areCars mazdaAndMini `shouldBe` [True, True]
      areCars (avianca : mazdaAndMini) `shouldBe` [False, True, True]
