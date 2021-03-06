(DEFPARAMETER *CCG-GRAMMAR*
  '(((KEY 1) (PHON ADAM) (MORPH N) (SYN ((BCAT NP) (FEATS NIL)))
     (SEM (LAM X ("MAN" X))) (PARAM 1.0))
    ((KEY 2) (PHON -IN) (MORPH W)
     (SYN
      ((((BCAT S) (FEATS NIL)) (DIR FS) (MODAL ALL)
        ((BCAT VP) (FEATS ((AGR 3S)))))
       (DIR BS) (MODAL STAR) ((BCAT NP) (FEATS NIL))))
     (SEM (LAM X (LAM P (P X)))) (PARAM 1.0))
    ((KEY 3) (PHON OKU) (MORPH V)
     (SYN
      (((BCAT VP) (FEATS ((TYP ROOT)))) (DIR BS) (MODAL ALL)
       ((BCAT NP) (FEATS ((CASE ACC))))))
     (SEM (LAM X (LAM Y (("READ" X) Y)))) (PARAM 1.0))
    ((KEY 4) (PHON -YAN) (MORPH W)
     (SYN
      ((((BCAT NP) (FEATS NIL)) (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR BS) (MODAL STAR) ((BCAT VP) (FEATS ((TYP ROOT))))))
     (SEM (LAM P (LAM Q (("AND" (P X)) (Q X))))) (PARAM 1.0))
    ((KEY 5) (PHON -YAN) (MORPH W)
     (SYN
      ((((BCAT NP) (FEATS NIL)) (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR BS) (MODAL STAR) (LEX T) ((BCAT VP) (FEATS ((TYP ROOT))))))
     (SEM (LAM P (LAM Q (("AND" (P X)) (Q X))))) (PARAM 1.0))
    ((KEY 6) (PHON KITAP) (MORPH N) (SYN ((BCAT NP) (FEATS NIL)))
     (SEM (LAM X ("BOOK" X))) (PARAM 1.0))
    ((KEY 7) (PHON -I) (MORPH W)
     (SYN
      ((((BCAT VP) (FEATS ((TYP ?T)))) (DIR FS) (MODAL ALL)
        (((BCAT VP) (FEATS ((TYP ?T)))) (DIR BS) (MODAL ALL)
         ((BCAT NP) (FEATS ((CASE ACC))))))
       (DIR BS) (MODAL STAR) ((BCAT NP) (FEATS NIL))))
     (SEM (LAM P (LAM Q (Q P)))) (PARAM 1.0))
    ((KEY 8) (PHON -DUGU) (MORPH W)
     (SYN
      ((((BCAT NP) (FEATS NIL)) (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR BS) (MODAL STAR)
       (((BCAT S) (FEATS NIL)) (DIR BS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))))
     (SEM (LAM P (LAM Q (("AND" (P X)) (Q X))))) (PARAM 1.0))
    ((KEY 9) (PHON -DUGU) (MORPH W)
     (SYN
      ((((BCAT NP) (FEATS NIL)) (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR BS) (MODAL STAR) (LEX T)
       (((BCAT S) (FEATS NIL)) (DIR BS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))))
     (SEM (LAM P (LAM Q (("AND" (P X)) (Q X))))) (PARAM 1.0))
    ((KEY 10) (PHON -MA) (MORPH AFF)
     (SYN
      ((((BCAT VP) (FEATS ((TYP ROOT)))) (DIR BS) (MODAL ALL)
        ((BCAT NP) (FEATS NIL)))
       (DIR BS) (MODAL STAR) (LEX T)
       (((BCAT VP) (FEATS ((TYP ROOT)))) (DIR BS) (MODAL ALL)
        ((BCAT NP) (FEATS NIL)))))
     (SEM (LAM P ("NEG" P))) (PARAM 1.0))
    ((KEY 11) (PHON -MA) (MORPH AFF)
     (SYN
      (((BCAT VP) (FEATS ((TYP ROOT)))) (DIR BS) (MODAL STAR) (LEX T)
       ((BCAT VP) (FEATS ((TYP ROOT))))))
     (SEM (LAM P ("NEG" P))) (PARAM 1.0))
    ((KEY 12) (PHON UYU) (MORPH V) (SYN ((BCAT VP) (FEATS ((TYP ROOT)))))
     (SEM (LAM X ("SLEEP" X))) (PARAM 1.0))))