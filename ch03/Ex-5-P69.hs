-- exercises for ch03 in page 69
-- 5. Write a function that determines whether its input list is a palindrome.

isPalindrome [] = True
isPalindrome [_] = False
isPalindrome (x:xs) = headEqLast && (isPalindrome $ init xs)
    where headEqLast = x == (last xs)
