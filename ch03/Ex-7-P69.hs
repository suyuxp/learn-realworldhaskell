-- exercises for ch03 in page 69
-- 7. Define a function that joins a list of lists together using a separator value

intersperse _ [] = []
intersperse _ (x:[]) = x
intersperse v (x:xs) = x ++ (v : (intersperse v xs))
