/+  *test, standard=advent-2022-standard

|%
++  test-dice
    ;:  weld
      %+  expect-eq
        !>  [[1 2 ~] [4 5 ~] [7 8 ~] [10 ~] ~]
        !>  (dice.standard (gulf 1 10) |=(a=@ =(0 (mod a 3))))
      %+  expect-eq
        !>  ["foo" "bar" "baz" ~]
        !>  (dice.standard "foo\0abar\0abaz" |=(a=* =(a '\0a')))
    ==
--