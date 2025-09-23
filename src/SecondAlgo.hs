module SecondAlgo (
    recursion,
    linearRecursion,
    mapop,
    folding, 
    listiik,
) where

import Data.Char (digitToInt)

help :: Int -> Int
help = sum . map((^5) . digitToInt) . show

--1
recursion :: Int
recursion = innerFunc (6*(9^5))
    where
        innerFunc 1 = 0
        innerFunc limit
            | limit == help limit = limit + innerFunc (limit-1)
            | otherwise           =  innerFunc (limit-1)

linearRecursion :: Int
linearRecursion = innerFunc (6*(9^5)) 0
    where
        innerFunc 1 accum = accum
        innerFunc limit accum
            | limit == help limit = innerFunc (limit - 1) (accum + limit)
            | otherwise           = innerFunc (limit - 1) accum

--2
folding :: Int
folding = foldl (\acc x -> if x == help x then acc + x else acc) 0 [2..(6*(9^5))]

--3
mapop :: Int
mapop = sum $ (\x -> if x == help x then x else 0) <$> [2..6*(9^5)]

--5
listiik :: Int
listiik = sum $ [x | x <- [2..6*(9^5)], x == help x]

--answer 443839