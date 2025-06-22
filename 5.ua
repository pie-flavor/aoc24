Parse ← (
  °⊟ ⊜□ ¬⊸⦷"\n\n" ▽⊸≠@\r
  ⊓(⊜(⊜⋕⊸≠@|)⊸≠@\n°□
  )(⊜(□⊜⋕⊸≠@,)⊸≠@\n°□
  )
)
Middle ← /+ ≡(⊡⌊ ÷2⊸⧻ °□)

A ← Middle ▽ /↧ ⊸⊞(≥°⊟ ⬚W⊗ ⊙°□)
B ← (
  ▽ ¬/↧ ⊙(:¤) ◡⊞(≥°⊟ ⬚W⊗ ⊙°□)
  Middle ⍚(
    ⊙◌⍥(
      ∧⍣(⨬(⍜⊏⇌)(⋅∘) >°⊟. ⊸⊗)(⋅∘)◡(⋅∘)
    )∞
  )
)
┌─╴test
  A Parse &fras "5e.txt"
  ⍤. =143
  B Parse &fras "5e.txt"
  ⍤. =123
└─╴

A Parse &fras "inputs/5i.txt"
B Parse &fras "inputs/5i.txt"
