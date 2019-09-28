; pftl files -- cem bozsahin & mark steedman, 2018

; These files are for the CCG derivations in
  Projecting from the lexicon (PFTL) draft

; the files are (among others):
; pftl.ccg is the grammar file  in paper format
; pftl.ded is the file generated from it by the LALR parser.
;   That's the one parser uses.
; to check the analyses, do at linux prompt $:

1. cd to pftl directory
2. $ ccglab
   then once in ccglab do
2'. (load-grammar "pftl")
3. (load "pftl.testsuite.lisp")
4. (dribble "output")
5. (test-ders)
6. (dribble)

Step 5 does all the derivations, and saves them in the file 'output'.

If you want you can check their LFs by
7. (test-lfs)
