~ "aoc.ua" ~ ArrayCharInput
Parse ← -@0 ArrayCharInput

Trails ← (
  ⊚⊸⌕0 # get trailheads
  ≡⌟(  # pathfind from each trailhead
     path(
      ⊸⊃(
        ⊡                             # get score to add 1 to
      | ˜▽ ⟜≡⌟(/↧≡(↧⊃(≥0|>))) ⊙△ +A₂¤ # get neighbor positions and check for out-of-bounds
      )
      ▽= +1 ⊙◡⊡ # check neighbors for a height of x+1
      ⊙◌
    | =9⊡ # pathfinding complete when we have reached height 9
    )
     □
  )
)

A ← /+ ≡◇(⧻◴≡⊣) Trails
B ← /+ ≡◇⧻ Trails

┌─╴test
  A Parse "10e.txt"
  ⍤. =36
  B Parse "10e.txt"
  ⍤. =81
└─╴

A Parse "inputs/10i.txt"
B Parse "inputs/10i.txt"
