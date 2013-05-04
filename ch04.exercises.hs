import Data.Char (digitToInt)


-- CH04/P84

-- 1. Write your own “safe” definitions of the standard partial list functions,
--    but make sure they never fail. As a hint, you might want to consider using the following types:
--
--    safeHead :: [a] -> Maybe a
--    safeTail :: [a] -> Maybe [a]
--    safeLast :: [a] -> Maybe a
--    safeInit :: [a] -> Maybe [a]

safeHead [] = Nothing
safeHead (x:_) = Just x

safeTail [] = Nothing
safeTail (_:xs) = Just xs

safeLast [] = Nothing
safeLast xs = Just (last xs)

safeInit [] = Nothing
safeInit xs = Just (init xs)



-- 2. Write a function splitWith that acts similarly to words but takes a predicate and a list of any type,
--    and then splits its input list on every element for which the predicate returns False:
--
--    splitWith :: (a -> Bool) -> [a] -> [[a]]

splitWith _ [] = []
splitWith pred xs =
    let (pre, suf) = break pred xs
    in case pre of
         [] -> splitWith pred (tail suf)
         _  -> pre : (splitWith pred suf)


-- 4. Write a program that transposes the text in a file.
--    For instance, it should convert "hello\nworld\n" to "hw\neo\nlr\nll\nod\n".

-- usage: unlines $ transposes $ lines "hello\n\nworlda\nA\n\n12345678"

transposes [] = []
transposes xs = (map head $ validData) : transposes (valid $ map tail $ validData)
    where validData = valid xs
          valid = filter notNull
          notNull x = not $ null x




-- CH04/P97

-- 1. Use a fold (choosing the appropriate fold will make your code much simpler) to rewrite and
--    improve upon the asInt function from the earlier section“Explicit Re- cursion” on page 85.
--
--    asInt_fold :: String -> Int

-- import Data.Char (digitToInt)

asInt_fold = foldl hex 0
    where hex a b = a * 10 + (digitToInt b)