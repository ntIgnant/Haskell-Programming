-- Functions basically get a serie of arguemnts with types, and return another type
-- definied as [function name] [args] :: [type arg] -> [type output]

tupleSum :: (Int, Int, Int) -> Int -- So here, the arguemnt is a tuple of Int elements, and outpu an Int
tupleSum (a, b, c) = a + b + c

