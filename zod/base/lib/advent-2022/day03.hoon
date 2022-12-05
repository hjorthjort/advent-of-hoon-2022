|@
++  part-one
    |=  a=(list @t)
    =/  lines=(list tape)  (turn a trip)
    =/  half-lines=(list [tape tape])  (turn lines half-list)
    =/  dups  (turn half-lines find-duplicate)
    =/  prios  (turn dups prio)
    (roll prios add)
++  prio
    |=  a=@
    ?:  (gte a 'a')
        (add (sub a 'a') 1)
    (add (sub a 'A') 27)
++  half-list
    |*  [a=(list)]
    =/  i  (div (lent a) 2)
    [(scag i a) (slag i a)]
++  find-duplicate
    |=  [a=(list @) b=(list @)]
    =/  first-set   (silt a)
    |-  ^-  @
    ?~  b 
      !!
    ?:  (~(has in first-set) i.b)
        i.b
    $(b t.b)
++  part-two  
    |=  a=(list @t)
    =/  lines=(list tape)  (turn a trip)
    =|  sum=@ud
    |-  ^-  @ud
    ?~  lines
      sum
    ?~  t.lines  !!
    ?~  t.t.lines  !!
    =/  group  ~[i.lines i.t.lines i.t.t.lines]
    =/  group-badge  (badge group)
    $(sum (add sum (prio group-badge)), lines t.t.t.lines)
++  badge
    |=  [a=tape b=tape c=tape *]
    |-  ^-  @t
    =/  elf-one  (silt a)
    =/  elf-two  (silt b)
    ?~  c
        !!
    ?:  &((~(has in elf-one) i.c) (~(has in elf-two) i.c))
        i.c
    $(c t.c)
--