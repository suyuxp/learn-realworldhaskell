-- exercises for ch03 in page 69
-- 4. Turn a list into a palindrome; i.e., it should read the same both backward and forward.
--    For example, given the list [1,2,3], your function should return [1,2,3,3,2,1].

palindrome [] = []
palindrome xs = xs ++ (reverse xs)


palindrome' [] = []
palindrome' (x:xs) = (x : (palindrome' xs)) ++ [x]
