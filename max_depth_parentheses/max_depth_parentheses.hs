max_depth_aux :: [Char] -> Int -> Int -> Int
max_depth_aux [] count max_parenthesis = max_parenthesis
max_depth_aux (x:xs) count max_parenthesis | x == '(' = max_depth_aux xs (count + 1) $ max max_parenthesis (count +1)
                                       | x == ')' = max_depth_aux xs (count - 1) max_parenthesis
                                       |otherwise  = max_depth_aux xs count max_parenthesis

                                                     
max_depth :: [Char] -> Int                           
max_depth xs = max_depth_aux xs 0 0
