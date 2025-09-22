module FirstAlgoSpec (spec) where

import Test.Hspec
import Test.HUnit (assertEqual)
import FirstAlgo

spec :: Spec
spec = describe "1st euler task" $ do

  describe "1.1) recursionActivator" $ do
    it "input 10 should return 23" $
      recursionActivator 10 `shouldBe` 23
    it "input 20 should return 78" $
      recursionActivator 20 `shouldBe` 78
    it "input 1000 should return 233168" $
      recursionActivator 1000 `shouldBe` 233168

  describe "1.2) tailRecursioninator" $ do
    it "input 10 should match recursionActivator" $
      tailRecursioninator 10 `shouldBe` recursionActivator 10
    it "input 20 should match recursionActivator" $
      tailRecursioninator 20 `shouldBe` recursionActivator 20
    it "input 1000 should match recursionActivator" $
      tailRecursioninator 1000 `shouldBe` recursionActivator 1000
    it "input 1000 should return 233168" $
      tailRecursioninator 1000 `shouldBe` 233168

  describe "2) filterLitterRikiTikiGitter" $ do
    it "input 10 should match listComprehenter" $
      filterLitterRikiTikiGitter 10 `shouldBe` listComprehenter 10
    it "input 20 should match listComprehenter" $
      filterLitterRikiTikiGitter 20 `shouldBe` listComprehenter 20
    it "input 1000 should match listComprehenter" $
      filterLitterRikiTikiGitter 1000 `shouldBe` listComprehenter 1000
    it "input 1000 should return 233168" $
      filterLitterRikiTikiGitter 1000 `shouldBe` 233168

  describe "3) mapiCapiFunction" $ do
    it "input 10 should return 23" $
      mapiCapiFunction 10 `shouldBe` 23
    it "input 20 should return 78" $
      mapiCapiFunction 20 `shouldBe` 78
    it "input 1000 should return 233168" $
      mapiCapiFunction 1000 `shouldBe` 233168

  describe "5) listComprehenter" $ do
    it "input 10 should return 23" $
      listComprehenter 10 `shouldBe` 23
    it "input 20 should return 78" $
      listComprehenter 20 `shouldBe` 78
    it "input 1000 should return 233168" $
      listComprehenter 1000 `shouldBe` 233168

  describe "bonus sumMultiplier" $ do
    it "input 10 should return 23" $
      sumMultiplier 10 `shouldBe` 23
    it "input 20 should return 78" $
      sumMultiplier 20 `shouldBe` 78
    it "input 1000 should return 233168" $
      sumMultiplier 1000 `shouldBe` 233168

  describe "all implementations should be equivalent" $ do
    it "all functions return same result for n=10" $ do
      let n = 10
      let results = [ sumMultiplier n
                    , listComprehenter n
                    , recursionActivator n
                    , tailRecursioninator n
                    , mapiCapiFunction n
                    , filterLitterRikiTikiGitter n
                    ]
      all (== head results) results `shouldBe` True

    it "all functions return same result for n=20" $ do
      let n = 20
      let results = [ sumMultiplier n
                    , listComprehenter n
                    , recursionActivator n
                    , tailRecursioninator n
                    , mapiCapiFunction n
                    , filterLitterRikiTikiGitter n
                    ]
      all (== head results) results `shouldBe` True

    it "all functions return same result for n=1000" $ do
      let n = 1000
      let results = [ sumMultiplier n
                    , listComprehenter n
                    , recursionActivator n
                    , tailRecursioninator n
                    , mapiCapiFunction n
                    , filterLitterRikiTikiGitter n
                    ]
      all (== 233168) results `shouldBe` True

  describe "edge cases" $ do
    it "all functions return 0 for n=1" $ do
      let n = 1
      let results = [ sumMultiplier n
                    , listComprehenter n
                    , recursionActivator n
                    , tailRecursioninator n
                    , mapiCapiFunction n
                    , filterLitterRikiTikiGitter n
                    ]
      all (== 0) results `shouldBe` True

    it "all functions return 0 for n=3" $ do
      let n = 3
      let results = [ sumMultiplier n
                    , listComprehenter n
                    , recursionActivator n
                    , tailRecursioninator n
                    , mapiCapiFunction n
                    , filterLitterRikiTikiGitter n
                    ]
      all (== 0) results `shouldBe` True

    it "all functions return 3 for n=5" $ do
      let n = 5
      let results = [ sumMultiplier n
                    , listComprehenter n
                    , recursionActivator n
                    , tailRecursioninator n
                    , mapiCapiFunction n
                    , filterLitterRikiTikiGitter n
                    ]
      all (== 3) results `shouldBe` True