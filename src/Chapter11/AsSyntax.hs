module Chapter11.AsSyntax
  ( isSubseqOf
  , capitalizeWords
  , capitalizeWord
  , capitalizeParagraph
  ) where

import Data.Char
import Data.List
import Data.List.Split (splitOn)

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
capitalizeWords = map (\w -> (w, capitalizeWord w)) . words

--
capitalizeWord :: String -> String
capitalizeWord [] = []
capitalizeWord (c:cs) =
  if (c == ' ')
    then c : capitalizeWord cs
    else toUpper c : cs

--
capitalizeParagraph :: String -> String
capitalizeParagraph = concatMap addPeriod . map capitalizeWord . splitOn "."
  where
    addPeriod [] = []
    addPeriod w =
      if (last w /= '.')
        then w ++ "."
        else w
