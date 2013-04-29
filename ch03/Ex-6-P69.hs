-- exercises for ch03 in page 69
-- 6. Create a function that sorts a list of lists based on the length of each sublist.

import Data.List (sortBy)

sortByLength xs = sortBy cmpByLength xs
    where cmpByLength x y = compare (length x) (length y)