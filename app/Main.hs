module Main (main) where

import FirstAlgo (sumMultiplier)
import SecondAlgo (recursion)

main :: IO ()
main = do
  putStrLn "\n👉Project Euler Solutions👈"
  putStrLn ("=" ++ replicate 45 '=')

  putStrLn "\n🦛 Problem 1 - Sum of Multiples of 3 or 5 below 1000:"
  putStrLn $ "Result 👉 " ++ show (sumMultiplier 1000) ++ "👈"

  putStrLn "\n🦛 Problem 30 - Sum of Numbers Equal to Sum of Digits^5:"
  putStrLn $ "Result 👉" ++ show recursion ++ "👈"

  putStrLn ("\n" ++ replicate 45 '=' ++ "\n")
