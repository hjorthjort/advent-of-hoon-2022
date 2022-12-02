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
--