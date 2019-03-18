module Chapter9.Lists(
    acro
) where

-- 1
acro xs = [x | x <- xs, x `elem` ['A'..'Z'] ]
