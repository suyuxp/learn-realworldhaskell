-- exercises for ch01
-- 4. Modify the WC.hs example again, in order to print the number of characters in a file.

main = interact charCount
    where charCount input = show (length input) ++ "\n"