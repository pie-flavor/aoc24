~ "aoc.ua" ~ ArrayInputBox
Safe ← ↧⊃(
  ↥∩(≍°⊏) ⊃⍏⍖
| /↧ ↧⊓⌟≥≤1 3 ⌵⧈/-2
)
A ← /+ ≡(Safe °□)
B ← /+ ≡(/↥ ≡Safe ⧅<¯1 °□)

┌─╴test
  A ArrayInputBox "2e.txt"
  ⍤. =2
  B ArrayInputBox "2e.txt"
  ⍤. =4
└─╴

A ArrayInputBox "inputs/2i.txt"
B ArrayInputBox "inputs/2i.txt"
