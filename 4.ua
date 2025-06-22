~ "aoc.ua" ~ ArrayCharInput
A ← (
  ¤-@A
  {∩₂(⍉.)∩₁(≡⇌.) -@A¤"XMAS"
   ∩₂(⇌.)∩₁(≡⇌.) [
      23_W_W_W
      W_12_W_W
      W_W_0_W
      W_W_W_18
    ]
  }
  /+♭ ≡(◇⌕)
)
B ← (
  ¤-@A
  [12_W_12
   W_0_W
   18_W_18]
  [∩₂(⍉.)∩₁(⇌.)]
  /+♭ ≡⌕
)

┌─╴test
  A ArrayCharInput "4e.txt"
  ⍤. =18
  B ArrayCharInput "4e.txt"
  ⍤. =9
└─╴

A ArrayCharInput "inputs/4i.txt"
B ArrayCharInput "inputs/4i.txt"
