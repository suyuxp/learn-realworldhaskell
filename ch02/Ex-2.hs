-- exercises for ch02 in page 39
-- 2. Write a function, lastButOne, that returns the element before the last.

lastButOne xs = last $ init xs
