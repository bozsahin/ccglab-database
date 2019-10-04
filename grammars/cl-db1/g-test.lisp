;; use: (load "g-test.lisp") after getting into ccglab -- it loads and runs this code
;; -cem bozsahin

(pprint (which-ccglab))    ; to identify version

(defun p-aux (expr targets onto)
  "an aux function to call the parser p. Only derivations onto are shown.
  Lowest types in targets will be eschewed by turning on type-raising."
  (type-raise-targets targets)  ;; NB this does not mean only type-raise cats in 'target' 
                                ;; it means eliminate these types during parsing for demo.
  (format t "~%Lowest types ~A will be eliminated~%" targets)
  (p expr)
  (format t "~%Derivations of ~A onto ~A~2%" expr onto)
  (ders onto)) ; show the derivations onto 

;; English

(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(en))         ; English TR
(savetr "g-en.ded")        ; saves grammar with TR rules
(lg "g-en")                ; lg assumes .ded suffix
(p-aux '(i think john likes and you believe mary hates cats) '(NP) 'S) ; parses the type-raised grammar
(p-aux '("this book" i like) '(NP) 'S)     ; parses the type-raised grammar
(p-aux '(i picked the book up) '(NP UP) 'S)
(p-aux '(i picked up the book) '(NP UP) 'S)


;; Mandarin Chinese

(lg "g" :make t)            ; makes g.ded from g.ccg 
(tr "g.ded" '(ch))         ; Chinese TR
(savetr "g-ch.ded")        ; saves grammar with TR rules
(lg "g-ch")                ; lg assumes .ded suffix
(p-aux '(zhangsan xihuan danshi lisi bu xihuan "zhe-ben shu") '(NP) 'S) ; parses the type-raised grammar
(p-aux '(ta digei gege "yi-hu jiu" e2r jiejie "yi-pan cai") '(NP) 'S) 
(p-aux '(zhangsan wo qidai ta "yao lai") '(NP) 'S)
(p-aux '(zhangsan wo quan ta "yao lai")' '(NP) 'S)
(p-aux '(zhangsan wo daying ta "yao lai") '(NP) 'S)

;; Turkish

(lg "g" :make t)            ; makes g.ded from g.ccg 
(tr "g.ded" '(tr))         ; Turkish TR
(savetr "g-tr.ded")        ; saves grammar with TR rules
(lg "g-tr")                ; lg assumes .ded suffix
(p-aux '(ben-im adam-in oku -dugu -nu bil -digim kitap) '(NP) 'NP)

;; European Portuguese

(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(pt))         ; Portuguese TR
(savetr "g-pt.ded")        ; saves grammar with TR rules
(lg "g-pt")                ; lg assumes .ded suffix
(p-aux '("O Paulo" nao os viu) '(NP) 'S)
 
;; Korean

(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(ko))         ; Korean TR
(savetr "g-ko.ded")        ; saves grammar with TR rules
(lg "g-ko")                ; lg assumes .ded suffix
(p-aux '(Hankwuk-ey Sewul-i namtaymun-sicang-i pul-i na-ass-ta) '(NP) 'S)

;; Dyirbal

(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(dy))         ; Dyirbal TR
(savetr "g-dy.ded")        ; saves grammar with TR rules
(lg "g-dy")                ; lg assumes .ded suffix
(p-aux '("bayi yara" numa-ngu giga-n gubi-ngu mawa-li) '(NP VP) 'S)
(p-aux '("bayi yara" numa-ngu giga-n banaga-nyu) '(NP VP) 'S)

;; German

(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(de))         ; German TR
(savetr "g-de.ded")        ; saves grammar with TR rules
(lg "g-de")                ; lg assumes .ded suffix
(p-aux '("Dass sie kommt" glaubt er nicht) '(NP S) 'S)
(p-aux '("Die Diplomarbeit" zu schreiben hat "die Studentin" gelanweilt) '(NP S) 'S)
