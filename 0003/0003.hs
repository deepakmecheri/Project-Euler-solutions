largestPrimeFactor = largestPrimeFactor' 2
    where
        largestPrimeFactor' largestFactorTillNow num
            | num == 1 = largestFactorTillNow
            | otherwise = let newLargestFactor = head [x | x <- [largestFactorTillNow..], num `mod` x == 0]
                in largestPrimeFactor' newLargestFactor (num `div` newLargestFactor)
