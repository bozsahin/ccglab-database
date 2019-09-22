(lg "g" :make t)            ; makes g.ded from g.ccg 
(tr "g.ded" '(en))         ; English TR
(savetr "g-en.ded")        ; saves grammar with TR rules
(lg "g-en")                ; lg assumes .ded suffix
(type-raise-targets '(NP)) ; turns lowest type elimination on, only for NP
(p '(i think john likes and you believe mary hates cats)) ; parses the type-raised grammar
(ders 'S)                     ; shows derivations onto S
(p '("this book" i like))     ; parses the type-raised grammar
(ders 'S)                     ; shows derivations onto S


(lg "g" :make t)            ; makes g.ded from g.ccg 
(tr "g.ded" '(ch))         ; Chinese TR
(savetr "g-ch.ded")        ; saves grammar with TR rules
(lg "g-ch")                ; lg assumes .ded suffix
(type-raise-targets '(NP)) ; turns lowest type elimination on, only for NP
(p '(zhangsan xihuan danshi lisi bu xihuan "zhe-ben shu")) ; parses the type-raised grammar
(ders 'S)                     ; shows derivations onto S
(p '(ta digei gege "yi-hu jiu" e2r jiejie "yi-pan cai"))       ; parses the type-raised grammar
(ders 'S)                     ; shows derivations onto S
(p '(zhangsan wo qidai ta "yao lai"))
(ders 'S)
(p '(zhangsan wo quan ta "yao lai"))
(ders 'S)
(p '(zhangsan wo daying ta "yao lai"))
(ders 'S)

 
(lg "g" :make t)            ; makes g.ded from g.ccg 
(tr "g.ded" '(tr))         ; Turkish TR
(savetr "g-tr.ded")        ; saves grammar with TR rules
(lg "g-tr")                ; lg assumes .ded suffix
(type-raise-targets '(NP)) ; turns lowest type elimination on, only for NP
(p '(ben-im adam-in oku -dugu -nu bil -digim kitap))
(ders)                     ; shows derivations (including TR'd results)


(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(pt))         ; Portuguese TR
(savetr "g-pt.ded")        ; saves grammar with TR rules
(lg "g-pt")                ; lg assumes .ded suffix
(type-raise-targets '(NP)) ; turns lowest type elimination on, only for NP
(p '("O Paulo" nao os viu))
(ders 'S)                     ; shows derivations
 
(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(ko))         ; Korean TR
(savetr "g-ko.ded")        ; saves grammar with TR rules
(lg "g-ko")                ; lg assumes .ded suffix
(type-raise-targets '(NP)) ; turns lowest type elimination on, only for NP
(p '(Hankwuk-ey Sewul-i namtaymun-sicang-i pul-i na-ass-ta))
(ders 'S)                     ; shows derivations

(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(dy))         ; Dyirbal TR
(savetr "g-dy.ded")        ; saves grammar with TR rules
(lg "g-dy")                ; lg assumes .ded suffix
(type-raise-targets '(NP)) ; turns lowest type elimination on, only for NP
(p '("bayi yara" numa-ngu giga-n gubi-ngu mawa-li))
(ders 'S)                     ; shows derivations


(lg "g" :make t)           ; makes g.ded from g.ccg 
(tr "g.ded" '(de))         ; German TR
(savetr "g-de.ded")        ; saves grammar with TR rules
(lg "g-de")                ; lg assumes .ded suffix
(type-raise-targets '(NP S)) ; turns lowest type elimination on, only for NP
(p '("Dass sie kommt" glaubt er nicht))
(ders 'S)                     ; shows derivations
(p '("Die Diplomarbeit" zu schreiben hat "die Studentin" gelanweilt))
(ders 'S)
