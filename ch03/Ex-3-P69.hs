-- exercises for ch03 in page 69
-- 3. Write a function that computes the mean of a list, i.e., the sum of all elements in the list divided by its length.

mean xs = calcSum / calcLength
    where calcSum = sum xs
          calcLength = fromIntegral $ length xs
