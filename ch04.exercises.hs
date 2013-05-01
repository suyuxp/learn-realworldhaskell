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
