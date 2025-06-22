# Experimental!
Parse ← (
  ⊸≠@\n ▽⊸≠@\r  # For each line
  ⊜(°$"_: _"    # answerS valuesS ? lineS
    ⊙(□⊜⋕⊸≠@\s) # Split values into boxed list
    ⊟ ⋕         # rowAnswerValues ? answerS valuesB
  )
)
Equations‼ ← /+▽≡(
  °□:°⊟               # values answer ? rowAnswerValues
  /(/⊂⊞⊂) ▽-1◡⋅⧻ ¤⇡^1 # Array of each possible permutation of operators for the values
  ≡⌟(
    # For each possible operation set, apply to values
    ⊙(:°⊂) # ops rest first ? ops values
    ∧^0
  ) # ? results answer
  ◇⊸∊
)

A ← Equations‼⨬(+|×) 2
B ← Equations‼⨬(+|×|⋕ ˜⊂ ∩°⋕) 3
┌─╴test
  A Parse &fras "7e.txt"
  ⍤. =3749
  B Parse &fras "7e.txt"
  ⍤. =11387
└─╴

B Parse &fras "inputs/7i.txt"
A Parse &fras "inputs/7i.txt"
