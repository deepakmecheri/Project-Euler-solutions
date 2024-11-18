palindromeProducts = [x * y | x <- [100..999], y <- [x..999], isPalindrome (x*y)]
                        where
                            isPalindrome num = let numStr = show num in numStr == reverse numStr
                            
