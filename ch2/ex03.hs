lastButOne xs = if length xs < 2 || null xs
    then head xs
    else head (drop (length xs - 2) xs)