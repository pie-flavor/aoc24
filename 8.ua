# Experimental!
~ "aoc.ua" ~ ArrayCharInput

A ← (
  ⟜△
  ▽⊸≠@. ◴⊸♭ # get the list of unique frequencies
  ≡⌟₂(
    # for each frequency
    ⧅≠2 ⊚⌕             # all permutations of coordinate pairs on that frequency
    ≡(+⊸- °⊟)          # project one more position in the same direction
    ▽/↧⍉ ≡⊂ ⊸⊓⌟≥< 0 ¤: # filter out the out-of-bounds frequencies
    □
  )
  ⧻◴ /◇⊂ # dedup and count
)

B ← (
  ⟜△
  ▽⊸≠@. ◴⊸♭ # get the list of unique frequencies
  ≡⌟₂(
    # for each frequency
    ⧅≠2 ⊚⌕ # all permutations of coordinate pairs on that frequency
    ≡⌟₁(
      # for each coordinate pair
      ⊙¤ ⊸- °⊟                    # prepare loop variables: list, distance, length
      ⍢(⊃(⋅∘|⊂¤ ⊙⋅∘)              # append new point to list
      | /↧⍉ ⊂ ⊸⊓⌟≥< 0 ◡⋅⋅⋅∘⤚+ ⊸⊙⊢ # project a new point in the same direction, continue unless out-of-bounds
      )
      □ ⋅⋅⊙◌
    )
    □
  )
  ⧻◴ /◇⊂/◇⊂ # dedup and count
)

┌─╴test
  A ArrayCharInput "8e.txt"
  ⍤. =14
  B ArrayCharInput "8e.txt"
  ⍤. =34
└─╴

A ArrayCharInput "inputs/8i.txt"
B ArrayCharInput "inputs/8i.txt"
