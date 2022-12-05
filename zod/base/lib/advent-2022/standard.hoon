|%
++  dice
:: Partition a list by a gate, splitting it into sublists between elements which
:: return true when slammed to the splitter gate.
:: Example:
:: (dice "foo,bar,baz,blag" |=(a=@t =(a ",")))  =>  ["foo" "bar" "baz" "blag"]
    |*  [xs=(list) splitter=gate]
    ^-  (list (list))
    %+  reel  xs
    |*  [x=* curr=(list) acc=(list (list))]
    ?:  (splitter x)
        [~ [curr acc]]
    [[x curr] acc]
--


