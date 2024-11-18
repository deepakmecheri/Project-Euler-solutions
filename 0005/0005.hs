smallestMultiple x y = x' * y' * (gcd x y)
                        where 
                            (x', y') = coprimeTransform x y
                                where
                                    coprimeTransform x y = let g = gcd x y in (div x g, div y g)
answer = foldl smallestMultiple 1 [1..20]
