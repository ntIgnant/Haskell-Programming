-- foldr (fold from right) and foldl (fold from left)
-- Both functions work exaclty the same, they just fold from differnet sides (right / left)
-- NOTE: Both foldr and foldl need a base case, for the initial "calculation"

-- e.g sum of num list using foldr (fold from fight)
sum_all :: Integral a => [a] -> a -- Type definition
sum_all xs = foldr (+) 0 xs
          -- foldr (expression) (base value) (list)

-- e.g sub of num list using foldl (foldr from left)
sub_all_left :: Integral a => [a] -> a
sub_all_left xs = foldl (-) 0 xs


