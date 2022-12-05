/+  *test, day=advent-2022-day04

|%
++  my-test-input
~['2-4,6-8' '2-3,4-5' '5-7,7-9' '2-8,3-7' '6-6,4-6' '2-6,4-8']
++  test-parser
    ;:  weld
    %+  expect-eq
       !>  [3 77 76 90]
       !>  (line-parser.day '3-77,76-90')
    %+  expect-eq
        !>  ~[[3 77 76 90] [4 9 13.422 0]]
        !>  ~(input day ~['3-77,76-90' '4-9,13422-0'])
    ==
++  test-part-one
    ;:  weld
    %+  expect-eq
        !>  1
        !>  (part-one-test.day [2 8 3 7])
    %+  expect-eq
        !>  0
        !>  (part-one-test.day [2 6 3 7])
    %+  expect-eq
        !>  2
        !>  ~(part-one day my-test-input)
    ==
--