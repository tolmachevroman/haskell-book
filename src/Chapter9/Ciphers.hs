module Chapter9.Ciphers(
  ceasar,
  shiftChar
) where

import           Data.Char

-- Ceasar encryption
ceasar :: Int -> String -> String
ceasar n = map (shiftChar n)

shiftChar :: Int -> Char -> Char
shiftChar n char
    | n > 0 = chr $ shiftCharPositive n char
    | n < 0 = chr $ shiftCharNegative n char
    | otherwise = char

shiftCharPositive n char
        | shiftedChar > ord 'z' = shiftedChar - 26
        | otherwise         = shiftedChar
       where shiftedChar = ord char + n

shiftCharNegative n char
        | shiftedChar < ord 'a' = shiftedChar + 26
        | otherwise         = shiftedChar
       where shiftedChar = ord char + n

