module Chapter9.Lists(
    acronym,
    tuplesFromLists,
    multipliesOf3,
    articlesFilter
) where

-- 1
acronym xs = [x | x <- xs, x `elem` ['A'..'Z'] ]

-- 2
mySquare = [x^2 | x <- [1..5]]
myCube   = [y^3 | y <- [1..5]]

tuplesFromLists = [(x, y) | x <- mySquare, y <- myCube]

-- 3
multipliesOf3 xs = [x | x <- xs, x `rem` 3 == 0]

-- 4
articlesFilter sentence = [word | word <- words sentence, word `notElem` ["the", "a", "an"]]