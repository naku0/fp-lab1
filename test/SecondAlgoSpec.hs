module SecondAlgoSpec (spec) where

import SecondAlgo
import Test.HUnit (assertBool)
import Test.Hspec

spec :: Spec
spec = describe "30th euler task" $ do
  describe "all implementations should return correct answer" $ do
    it "1.1) task returns 443839" $
      recursion `shouldBe` 443839

    it "1.2) task returns 443839" $
      linearRecursion `shouldBe` 443839

    it "2) task returns 443839" $
      folding `shouldBe` 443839

    it "3) task returns 443839" $
      mapop `shouldBe` 443839

    it "5) task returns 443839" $
      listiik `shouldBe` 443839

  describe "equivalence of implementations" $ do
    it "all functions return identical results" $ do
      let results = [recursion, linearRecursion, folding, mapop, listiik]
      all (== head results) results `shouldBe` True

    it "results are consistent across multiple checks" $ do
      recursion `shouldBe` linearRecursion
      folding `shouldBe` mapop
      listiik `shouldBe` folding
