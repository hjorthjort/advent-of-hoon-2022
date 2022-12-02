|%
++  part-one
    |=  [lines=(list cord)]
    %-  roll 
        :_  add
        %+  turn  lines 
        |=  [line=@t]
            (part-one-score (mod line 256) (div line 65.536))
++  part-one-score
    |=  [them=@t me=@t]
    :: Normalize to A, B, C
    =/  them-norm  (add 1 (sub them 'A'))
    =/  me-norm  (add 1 (sub me 'X'))
    %+  add
    :: Score for my choice
        me-norm
    :: Score for win vs. loss vs. draw
    ?:  =(me-norm them-norm)
      3
    ?:  ?|  &(=(me-norm 1) =(them-norm 2))
            &(=(me-norm 2) =(them-norm 3))
            &(=(me-norm 3) =(them-norm 1))
        ==
        0
    6
++  part-two
    !!
--