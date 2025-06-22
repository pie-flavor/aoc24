~ "aoc.ua" ~ ArrayCharInput
# ? Movement Character Map
Move ← (
  ⊓⊓$Movement $Character $Map
  ⨬(⬚0↻₁|≡⬚0↻₋₁|⬚0↻₋₁|≡⬚0↻₁) ◡⊙∘
  ±⧻⊚.
  ⨬(⋅⊙⊙∘)(
    ⊓⊓⊓$NewCharacter $Movement $Character $Map
    ⨬(: ⊙⊙⋅∘|◿₄+₁ ⋅⊙⊙∘) ◡(=@#⊡°¤⊚ ⊙⋅⋅∘)
  )
)
A ← (
  ⍜⊡⋅1 ⊙(↯:0⊸△) ⟜⍜⊡⋅@. °¤⊚⊸=@^
  ⧻⊚◇=@X ⊡₂⍥(⍜°□₃ (Move ⊙(:⍜⊡⋅@X °¤⊚⟜:)))∞ □₃ 0
)

┌─╴test
  Character ← ⍜⊡⋅1 6_4 ↯10_10 0

  A ArrayCharInput "6e.txt"
  ⍤. =41
└─╴

A ArrayCharInput "inputs/6i.txt"
