A ← (
  ˜▽ °⊏               # convert group lengths into groups
  ≡(⨬(÷2|⋅¯1) ⊸◿2)    # mark empty spaces and convert group IDs to file IDs
  ⍢(⍜⊡⇌ [∩¤]          # swap the first empty space and last file block
  | ◡> ⊃(⊢⊚|⊣⊚¬) ⊸⌕¯1 # while first empty space is before last file block
  )
  ◌◌
  /+ ×°⊏ ▽⊸≠¯1
)
B ← (
  ≡(⊟ ⨬(÷2|⋅¯1) ⊸◿2) °⊏ # associate file IDs with lengths
  ⇌⇡+₁/↥⊡0⊸⍉            # list IDs
  ∧(
    ⊸⊃(
      ⊢⊢⊚⌕ ˜⊟W ⊙∘ # get the location of the file
    | ⊢⍉⊚⌕¯1_W ⋅∘ # get the locations of all free blocks
    )
    ◡(⊚ ≡⌟₂(↧⊃>(≤ ∩⌟(⊣⊡))):) # get the locations of free blocks that can contain the file
    =0⊸⧻
    ⨬(
      ⊃(⊡⊙⋅∘|⋅⊙◌) ⊢            # convert free block ID to location
      ⤙˜- ◡∩⌟(⊣⊡)              # get remaining size of free block after inserting file
      ⊟ ⊙(⊟¯1) ⊟ ⊃(⊢⊡◌◌◌)⊙⊙⊙⊙∘ # split free block into file and new smaller free block
      ⊃⋅⋅⊙◌(⍜⊏(⋅∘) ⊃(⋅⊙⋅∘|∘))  # replace the old free block in the filesystem
      ⍜⊡⋅[¯1] ¤˜⊟0 +₁          # mark old file as free
      ⍜⊜□⍚(¤⍜⊢⋅¯1/+) ⊢⍉ ⊸⌕¯1_W # collapse adjacent free blocks
    )⋅⋅◌
  )
  /+ ▽⊸≥₀ ×°⊏ ˜▽°⊟⍉
)

┌─╴test
  A ≡⋕ &fras "9e.txt"
  ⍤. =1928
  B ≡⋕ &fras "9e.txt"
  ⍤. =2858
└─╴

A ≡⋕ &fras "inputs/9i.txt"
B ≡⋕ &fras "inputs/9i.txt"
