module Chapter11.AsSyntax
  ( isSubseqOf
  , capitalizeWords
  ) where

import Data.Char

--
isSubseqOf :: (Eq a) => [a] -> [a] -> Bool
isSubseqOf [] _ = False
isSubseqOf _ [] = False
isSubseqOf ys xs = [] == foldr f' ys (reverse xs)
  where
    f' i [] = []
    f' i t@(y:ys) =
      if (i == y)
        then ys
        else t

--
capitalizeWords :: String -> [(String, String)]
capitalizeWords = map (\w@(c:cs) -> (w, toUpper c : cs)) . words
