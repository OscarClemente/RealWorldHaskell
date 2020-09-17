meanList x = calculateMean x 0 0
    where calculateMean (x:xs) count sum = calculateMean xs (count+1) (sum+x)
          calculateMean [] count sum = fromIntegral(sum) / fromIntegral(count)

meanList2 :: (Fractional a) => [a] -> a
meanList2 x = sum x / fromIntegral(length x)