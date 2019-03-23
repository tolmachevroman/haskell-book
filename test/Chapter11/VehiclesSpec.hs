module Chapter11.VehiclesSpec where

import SpecHelper

spec :: Spec
spec =
  describe "Vehicles exercises" $ do
    it "Data types" $ do
      isCar (Car Mazda (Price 1000)) `shouldBe` True
      isCar (Plane Avianca) `shouldBe` False
      isPlane (Car Mini (Price 1000)) `shouldBe` False
      isPlane (Plane Avianca) `shouldBe` True
