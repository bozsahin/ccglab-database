(DEFPARAMETER *CCG-GRAMMAR*
  '(((KEY 1) (PHON THE) (MORPH D)
     (SYN
      (((BCAT NP) (FEATS NIL)) (DIR FS) (MODAL STAR) ((BCAT N) (FEATS NIL))))
     (SEM (LAM X X)) (PARAM 1.0))
    ((KEY 2) (PHON MAN) (MORPH N) (SYN ((BCAT N) (FEATS NIL))) (SEM "MAN")
     (PARAM 1.0))
    ((KEY 3) (PHON BOY) (MORPH N) (SYN ((BCAT N) (FEATS NIL))) (SEM "BOY")
     (PARAM 1.0))
    ((KEY 4) (PHON IN) (MORPH P)
     (SYN
      ((((BCAT N) (FEATS NIL)) (DIR BS) (MODAL ALL) ((BCAT N) (FEATS NIL)))
       (DIR FS) (MODAL STAR) ((BCAT NP) (FEATS NIL))))
     (SEM (LAM X (LAM Y (("IN" X) Y)))) (PARAM 1.0))
    ((KEY 5) (PHON CORNER) (MORPH N) (SYN ((BCAT N) (FEATS NIL)))
     (SEM "CORNER") (PARAM 1.0))
    ((KEY 6) (PHON HITS) (MORPH V)
     (SYN
      ((((BCAT S) (FEATS NIL)) (DIR BS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL))))
     (SEM (LAM X (LAM Y (("HITS" X) Y)))) (PARAM 1.0))
    ((KEY 7) (PHON SEES) (MORPH V)
     (SYN
      ((((BCAT S) (FEATS NIL)) (DIR BS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL))))
     (SEM (LAM X (LAM Y (("SEES" X) Y)))) (PARAM 1.0))
    ((KEY 8) (PHON WANTS) (MORPH V)
     (SYN
      ((((BCAT S) (FEATS NIL)) (DIR BS) (MODAL ALL) ((BCAT NP) (FEATS NIL)))
       (DIR FS) (MODAL ALL) ((BCAT VP) (FEATS NIL))))
     (SEM (LAM P (LAM X (("WANT" (P X)) X)))) (PARAM 1.0))
    ((KEY 9) (PHON TO) (MORPH I)
     (SYN
      (((BCAT VP) (FEATS NIL)) (DIR FS) (MODAL ALL) ((BCAT IV) (FEATS NIL))))
     (SEM (LAM P P)) (PARAM 1.0))
    ((KEY 10) (PHON STUDY) (MORPH V) (SYN ((BCAT IV) (FEATS NIL)))
     (SEM (LAM X ("STUDY" X))) (PARAM 1.0))
    ((KEY 11) (PHON READ) (MORPH V)
     (SYN
      (((BCAT IV) (FEATS NIL)) (DIR FS) (MODAL ALL) ((BCAT NP) (FEATS NIL))))
     (SEM (LAM X (LAM Y (("READ" X) Y)))) (PARAM 1.0))))