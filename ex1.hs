-- https://www.cis.upenn.edu/~cis194/spring13/lectures/01-intro.html
import Data.Char(digitToInt)

sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

toDigits :: Integer -> [Integer]
toDigits val = map fromIntegral (map digitToInt (show val))

toDigitsRev :: Integer -> [Integer]
toDigitsRev val = reverse (toDigits val)

main = do
    putStrLn (show (toDigits 5162))
    putStrLn (show (toDigitsRev 5162))
    return (sumtorial 2)
