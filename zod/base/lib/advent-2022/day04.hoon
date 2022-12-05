|_  [raw-input=(list cord)]
++  line-parser
  =/  delims  ;~(pose com hep)  :: accepts , or -
  |=  [line=cord]
  ^-  [@ud @ud @ud @ud]
  (rash line ;~((glue delims) dem dem dem dem))
++  input
  ^-  (list [@ud @ud @ud @ud])
  (turn raw-input line-parser)
++  part-one-test
    |=  line=[@ud @ud @ud @ud]
    ^-  @ud
    =/  one  [-.line +<.line]
    =/  two  +>.line
    =/  one-in-two  &((lte -.two -.one) (gte +.two +.one))
    =/  two-in-one  &((lte -.one -.two) (gte +.one +.two))
    =/  inside  |(one-in-two two-in-one)
    ?:  inside
        1
    0
++  part-one
    (roll (turn input part-one-test) add)
++  part-two-test
    |=  line=[@ud @ud @ud @ud]
    ^-  @ud
    =/  one  [-.line +<.line]
    =/  two  +>.line
    =/  one-in-two  &((lte -.two -.one) (gte +.two -.one))
    =/  two-in-one  &((lte -.one -.two) (gte +.one -.two))
    =/  inside  |(one-in-two two-in-one)
    ?:  inside
        1
    0
++  part-two
    (roll (turn input part-two-test) add)
--
