|%
++  dice
    |*  [xs=(list) splitter=gate]
    ^-  (list (list))
    %+  reel  xs
    |*  [x=* curr=(list) acc=(list (list))]
    ?:  (splitter x)
        [~ [curr acc]]
    [[x curr] acc]
--


