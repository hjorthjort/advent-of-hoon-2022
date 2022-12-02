/*  puzzle-input  %txt  /advent-2022/day01/txt

:-  %say
|=  *
=<  :+  %noun
       [%1 part-one]
    [%2 part-two]
|%
    ++  input
        %+  turn  puzzle-input
        |=  [line=@t]
        ?:  =('' line)
            0
        (rash line dem)
    ++  part-one
        =<
        max-elf
        ::
        %+  roll  input
        |=  [line=@ this-elf=_0 max-elf=@]
        ?:  =(line 0)
            [0 (max this-elf max-elf)]
        :: Parse the line into an atom (as decimal)
        [(add this-elf line) max-elf]
    ++  part-two
        =-
        =/  sorted=(list @)  (sort elfs gth)
        =/  top-three=(list @)  (scag 3 sorted)
        (roll top-three add)
        ::
        %+  roll  input
        |=  [line=@ elf=_0 elfs=(list @)]
        ?:  =(line 0)
            [0 [elf elfs]]
        [(add elf line) elfs]
--