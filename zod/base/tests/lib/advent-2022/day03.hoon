/+  *test, *advent-2022-day03

|%
++  test-find-duplicate
    %+  expect-eq
      !>  'p'
      !>  (find-duplicate "vJrwpWtwJgWr" "hcsFMMfFFhFp")
++  test-half-list
    %+  expect-eq
      !>  ["vJrwpWtwJgWr" "hcsFMMfFFhFp"]
      !>  (half-list "vJrwpWtwJgWrhcsFMMfFFhFp")
++  test-part-one
    =/  inp
      :~
        'vJrwpWtwJgWrhcsFMMfFFhFp'
        'jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL'
        'PmmdzqPrVvPwwTWBwg'
        'wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn'
        'ttgJtRGJQctTZtZT'
        'CrZsJsPPZsGzwwsLwLmpwMDw'
        ==
    %+  expect-eq
      !>  157
      !>  (part-one inp)
--
