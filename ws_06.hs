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
