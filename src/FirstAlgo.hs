module FirstAlgo (
                    sumMultiplier, 
                    listComprehenter, 
                    recursionActivator, 
                    tailRecursioninator, 
                    mapiCapiFunction , 
                    filterLitterRikiTikiGitter
                ) where

sumMultiplier :: Int -> Int
sumMultiplier n = 
    innerSum 3 + innerSum 5 - innerSum 15
    where innerSum divisor = div (divisor * amount * (amount + 1)) 2
            where amount = div (n - 1) divisor

--5
listComprehenter :: Int -> Int
listComprehenter n = sum [x | x <-[1..n-1], mod x 3 == 0 || mod x 5 == 0 ]
 
 --1
recursionActivator:: Int -> Int
recursionActivator n = innerFunc (n-1)
    where 
        innerFunc 0 = 0
        innerFunc current
            | mod current 3 == 0 || mod current 5 == 0 = current + innerFunc(current-1)
            | otherwise = innerFunc(current - 1)

tailRecursioninator :: Int -> Int
tailRecursioninator n = innerFunc (n-1) 0
    where
        innerFunc 0 acc = acc 
        innerFunc cur acc 
            | mod cur 3 == 0 || mod cur 5 == 0 = innerFunc (cur-1) (acc+cur)
            | otherwise = innerFunc (cur-1) acc

--3
mapiCapiFunction :: Int -> Int
mapiCapiFunction n = sum $ (\x -> if mod x 3 == 0 || mod x 5 == 0 then x else 0) <$> [1..n-1]
 
--2
filterLitterRikiTikiGitter :: Int -> Int
filterLitterRikiTikiGitter n = sum $ filter (\ch -> mod ch 3 == 0 || mod ch 5 == 0) [1..n-1]

--answer = 233168