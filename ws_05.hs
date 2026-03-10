-- TASK 1 --
-- "Maybe" always comes with "Just"

-- 7        -> normal number
-- Just 7   -> a Maybe containing 7

-- Structure of Maybe:
-- "Maybe is a wrapper that marks a value as either present (Just value) or absent (Nothing)"
--
-- data Maybe a = Nothing | Just a

maybeDefault :: a -> Maybe a -> a -- Type definiton for the function
maybeDefault x (Just y) = y -- Case where the 'Maybe container' Contains a valid y
maybeDefault x Nothing = x -- Case where the "Maybe Container" contains 'Nothing/Null' as y value (Print default value)

data Cmp = LESSER | EQUAL | GREATER -- data (struct like) 'lesser OR equal OR greater'
 deriving (Show)

compareOrd :: Ord a => a -> a -> Cmp -- Type dfinition (NOTE: last val is Cmp)
compareOrd x y
 | x < y = LESSER
 | x > y = GREATER
 | otherwise = EQUAL -- case where x == y

-- TASK 2 --
data UnderGrad = Accounting | Management | CompSci | Media -- Different Constructors
 deriving (Show)

data Master = DataScience | CyberSec | Business
 deriving (Show)

newtype Color = Color (Int, Int, Int) -- 1 Constructor 'Color' with val (...)
 deriving (Show)
-- Now, creation of the smart constructor
-- Smart Constructor is literally a function to create the instance
-- of the 'struct'/newtype/data based on logic
mkColor :: (Int, Int, Int) -> Maybe Color -- Return a 'Color' if everything goes fine
mkColor (r, g, b)
 | r >= 0 && r <= 255 &&
   g >= 0 && g <= 255 &&
   b >= 0 && b <= 255 = Just (Color (r, g, b))
 |otherwise = Nothing -- None/null if x not in range

-- TASK 2. 3 ....
