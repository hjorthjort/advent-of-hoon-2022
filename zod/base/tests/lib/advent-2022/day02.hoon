:: /=  *   /lib/advent-2022/day02
/+  *test, *advent-2022-day02

|%
++  test-01
    ;:  weld
      %+  expect-eq
        !>  8
        !>  (part-one-score 'A' 'Y')
      %+  expect-eq
        !>  1
        !>  (part-one-score 'B' 'X')
      %+  expect-eq
        !>  6
        !>  (part-one-score 'C' 'Z')
    ==
++  test-02
    ;:  weld
      %+  expect-eq
        !>  4
        !>  (part-two-score 'A' 'Y')
      %+  expect-eq
        !>  1
        !>  (part-two-score 'B' 'X')
      %+  expect-eq
        !>  7
        !>  (part-two-score 'C' 'Z')
      %+  expect-eq
        !>  3
        !>  (part-two-score 'A' 'X')
    ==
--