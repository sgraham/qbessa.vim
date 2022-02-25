" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn case match

" Instructions
syn keyword qbessaInstr add
syn keyword qbessaInstr and
syn keyword qbessaInstr div
syn keyword qbessaInstr mul
syn keyword qbessaInstr neg
syn keyword qbessaInstr or
syn keyword qbessaInstr rem
syn keyword qbessaInstr sar
syn keyword qbessaInstr shl
syn keyword qbessaInstr shr
syn keyword qbessaInstr sub
syn keyword qbessaInstr udiv
syn keyword qbessaInstr urem
syn keyword qbessaInstr xor
syn keyword qbessaInstr alloc16
syn keyword qbessaInstr alloc4
syn keyword qbessaInstr alloc8
syn keyword qbessaInstr loadd
syn keyword qbessaInstr loadl
syn keyword qbessaInstr loads
syn keyword qbessaInstr loadsb
syn keyword qbessaInstr loadsh
syn keyword qbessaInstr loadsw
syn keyword qbessaInstr loadub
syn keyword qbessaInstr loaduh
syn keyword qbessaInstr loaduw
syn keyword qbessaInstr loadw
syn keyword qbessaInstr storeb
syn keyword qbessaInstr stored
syn keyword qbessaInstr storeh
syn keyword qbessaInstr storel
syn keyword qbessaInstr stores
syn keyword qbessaInstr storew
syn keyword qbessaInstr ceqd
syn keyword qbessaInstr ceql
syn keyword qbessaInstr ceqs
syn keyword qbessaInstr ceqw
syn keyword qbessaInstr cged
syn keyword qbessaInstr cges
syn keyword qbessaInstr cgtd
syn keyword qbessaInstr cgts
syn keyword qbessaInstr cled
syn keyword qbessaInstr cles
syn keyword qbessaInstr cltd
syn keyword qbessaInstr clts
syn keyword qbessaInstr cned
syn keyword qbessaInstr cnel
syn keyword qbessaInstr cnes
syn keyword qbessaInstr cnew
syn keyword qbessaInstr cod
syn keyword qbessaInstr cos
syn keyword qbessaInstr csgel
syn keyword qbessaInstr csgew
syn keyword qbessaInstr csgtl
syn keyword qbessaInstr csgtw
syn keyword qbessaInstr cslel
syn keyword qbessaInstr cslew
syn keyword qbessaInstr csltl
syn keyword qbessaInstr csltw
syn keyword qbessaInstr cugel
syn keyword qbessaInstr cugew
syn keyword qbessaInstr cugtl
syn keyword qbessaInstr cugtw
syn keyword qbessaInstr culel
syn keyword qbessaInstr culew
syn keyword qbessaInstr cultl
syn keyword qbessaInstr cultw
syn keyword qbessaInstr cuod
syn keyword qbessaInstr cuos
syn keyword qbessaInstr dtosi
syn keyword qbessaInstr dtoui
syn keyword qbessaInstr exts
syn keyword qbessaInstr extsb
syn keyword qbessaInstr extsh
syn keyword qbessaInstr extsw
syn keyword qbessaInstr extub
syn keyword qbessaInstr extuh
syn keyword qbessaInstr extuw
syn keyword qbessaInstr sltof
syn keyword qbessaInstr ultof
syn keyword qbessaInstr stosi
syn keyword qbessaInstr stoui
syn keyword qbessaInstr swtof
syn keyword qbessaInstr uwtof
syn keyword qbessaInstr truncd
syn keyword qbessaInstr cast
syn keyword qbessaInstr copy
syn keyword qbessaInstr call
syn keyword qbessaInstr vastart
syn keyword qbessaInstr vaarg
syn keyword qbessaInstr phi
syn keyword qbessaInstr jmp
syn keyword qbessaInstr jnz
syn keyword qbessaInstr ret
hi def link qbessaInstr Identifier

" Keywords
syn keyword qbessaKeyword data function export section type align
hi def link qbessaKeyword Keyword

" Specifiers
syn keyword qbessaBaseType w l s d b h
hi def link qbessaBaseType Type

" Labels
syn region qbessaLabel start=+@+ end=+\s+
hi def link qbessaLabel PreProc

" Strings
syn region qbessaString start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
hi def link qbessaString String

" Comments
syn region qbessaComment start="#" end="$" contains=,@Spell
hi def link qbessaComment Comment

syn sync minlines=500

let b:current_syntax = "qbessa"
