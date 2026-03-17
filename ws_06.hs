-- PART 1 --
-- 1.)
divBySeven :: Fractional a => [a] -> [a] -- Type definition based on divition
divBySeven numList = map (/7) numList -- NOTE: this notation represents:
                                      -- e.g [1/7, 2/7, ...] so x goes before
				      -- the divition operator

getLen :: [String] -> [Int] -- Type definition based on 'length' funct.
getLen strList = map length strList

-- 2.)
divSix :: Integral a => a -> Bool
divSix num
 | num `mod` 6 == 0 = True
 | otherwise = False

mulOfSix :: Integral a => [a] -> [a]
mulOfSix nl = filter divSix nl


-- Helper function to check if a string length is >= 3
customCheck :: String -> Bool
customCheck str
 | length str >= 3 = True
 | otherwise = False

customLen :: [String] -> [String]
customLen stLs = filter customCheck stLs

-- 3.)
getOdds :: Integral a => [a] -> [a]
getOdds xs = filter odd xs

squareVals :: Num a => [a] -> [a]
squareVals xs = map (^2) xs

customComp :: Integral a => [a] -> [a]
customComp xs = (squareVals . getOdds) xs -- composition out of getOdds and
                                          -- squareVals functions. NOTE: the
					  -- composition is between parenthesis
					  -- (funct1 . funct2)

divTwo :: Integral a => [a] -> [a]
divTwo xs = filter (\x -> x `mod` 2 == 0) xs -- so if it is divisible
                                                -- by 2. '/=' -> '!='

divThree :: Integral a => [a] -> [a]
divThree xs = filter (\x -> x `mod` 3 == 3) xs -- the values that are
                                                -- divisible by 3
						-- '!=' in haskell is '/='

secondCustomComp :: Integral a => [a] -> [a]
secondCustomComp xs = (divThree . divTwo) xs

-- NOTE: The order of the functions in the composition are 'switched' because
-- of the composition function (.) definition ':t'
--
-- "(.) :: (b -> c) -> (a -> b) -> a -> c"
--
--          Second F -> Fist F
--

-- 4.)
flatten :: [[a]] -> [a]
flatten xs = foldr (++) [] xs

-- customTakeWhile :: 

-- PART 2 --
-- 1.)
-- NOTE: In Haskell, normally the values are altered, instead of creating new values (local vars)

-- Okay, so the function will get a ist of strings
-- then, create a list just with the
{-
starts_with :: String -> String -> Bool -- Type definition. This function will work with filter
starts_with x y -- String, 'Char' but it's easier to work with Strings for the type of return
 | (head x) == y = True -- Case where the String beginns with the char
 | otherwise False -- It doesn't beginn with

count_starts :: -- To count HOW MANY starts, a character has. Returns a boolean (Char, Int)
-}

count_initials :: [String] -> [(Char, Int)] -- Type definition
count_initials [] = [] --  base case for the recursion
count_initials (x:xs) = (ch, count ch (x:xs)) : count_initials rest
 where
  ch = head x
  rest = filter (\w -> head w /= ch) xs -- so, keep the initial char of the words that does't beggin with the current 'ch'


-- Helpter function
count :: Char -> [String] -> Int -- Type definition
count c = length . filter (\w -> head w == c)


