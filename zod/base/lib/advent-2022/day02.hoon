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
    |=  [lines=(list cord)]
    %-  roll
        :_  add
        %+  turn  lines
        |=  [line=@t]
            (part-two-score (mod line 256) (div line 65.536))
++  part-two-score
    |=  [them=@t end=@t]
    ^-  @ud
    :: Calculations in mod 3 makes this easy, at the end we shift up 1 step.
    :: A: 0, B: 1, C: 2
    =/  them-norm  (sub them 'A')
    :: X: 0, Y: 1, Z: 2
    =/  end-norm  (sub end 'X')
    %+  add
    :: Score for my choice
        (mul 3 end-norm)
    :: Take their choice, move it to the losing choice against them (+2 is -1 in mod 3).
    :: Add our desired end. If lose, we stay where we are. If draw, we add 1 so
    :: we end up at their choice, and if win, we add 2 so we end up at the
    :: winning move (after mod with a shift).
    =/  choice-raw=@ud  (mod (add (add them-norm 2) end-norm) 3)
    (add 1 choice-raw)
--