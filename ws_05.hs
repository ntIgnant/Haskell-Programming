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
