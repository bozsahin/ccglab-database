;; use: (load "g-test.lisp") after getting into ccglab -- it loads and runs this code
;; -cem bozsahin

(pprint (which-ccglab))    ; to identify version

(defun p-aux (expr onto)
  "an aux function to call the parser p. Only derivations onto are shown.
  Lowest types in targets will be eschewed by turning on type-raising."
  (p expr)
  (format t "~%Derivations of ~A onto ~A~2%" expr onto)
  (ders onto)) ; show the derivations onto 

(mlg "g")           ; makes g.ccg.lisp from g.ccg  --- to be loaded by tr without recompiling

;; English
(tr "g" '(en) "en-err.log")         ; English TR
(mergesave-tr "g-en")        ; saves grammar with TR rules
(lg "g-en")                
(p-aux '(i think john likes and you believe mary hates cats) 'S) ; parses the type-raised grammar
(p-aux '("this book" i like) 'S)     ; parses the type-raised grammar
(p-aux '(i picked the book up)  'S)
(p-aux '(i picked up the book) 'S)
(p-aux '(the beans that you spilled caused "quite a stir") 'S)
(p-aux '(she thinks harry and barry likes mary) 'S)


;; Mandarin Chinese
(tr "g" '(ch) "ch-err.log")         ; Chinese TR
(mergesave-tr "g-ch")        ; saves grammar with TR rules
(lg "g-ch")          
(p-aux '(zhangsan xihuan danshi lisi bu xihuan "zhe-ben shu") 'S) ; parses the type-raised grammar
(p-aux '(ta digei gege "yi-hu jiu" e2r jiejie "yi-pan cai") 'S) 
(p-aux '(zhangsan wo qidai ta "yao lai") 'S)
(p-aux '(zhangsan wo quan ta "yao lai")'  'S)
(p-aux '(zhangsan wo daying ta "yao lai") 'S)

;; Japanese
(tr "g" '(jp) "jp-err.log")         ; Japanese TR
(mergesave-tr "g-jp")        ; saves grammar with TR rules
(lg "g-jp")                ; lg assumes .ccg.lisp suffix
(p-aux '(taroo-wa hanako-ni kiteiru huku-o yogos-are-ta) 'S) 

;; Shipibo
(tr "g" '(sh) "sh-err.log")         ; Shipibo TR
(mergesave-tr "g-sh")        ; saves grammar with TR rules
(lg "g-sh")                ; lg assumes .ccg.lisp suffix
(p-aux '(ochiti-baon-ra bake natex-kan-ke) 'S) 
(p-aux '(joni-bo-ra mawa-kan-ke) 'S) 
(p-aux '(ochiti-nin-ra bake-bo natex-kan-ke) 'S) 

;; Liangshan Nuosu
(tr "g" '(nu) "nu-err.log")         ; Nousu TR
(mergesave-tr "g-nu")        ; saves grammar with TR rules
(lg "g-nu")                ; lg assumes .ccg.lisp suffix
(p-aux '(m33ka55 m33ko44 ndu21) 'S) 

;; Turkish
(tr "g" '(tr) "tr-err.log")         ; Turkish TR
(mergesave-tr "g-tr")        ; saves grammar with TR rules
(lg "g-tr")                ; lg assumes .ccg.lisp suffix
(p-aux '(ben-im adam-in oku -dugu -nu bil -digim kitap) 'NP)

;; European Portuguese
(tr "g" '(pt) "pt-err.log")         ; Portuguese TR
(mergesave-tr "g-pt" )        ; saves grammar with TR rules
(lg "g-pt")                ; lg assumes .ccg.lisp suffix
(p-aux '("O Paulo" nao os viu) 'S)
 
;; Korean
(tr "g" '(ko) "ko-err.log")         ; Korean TR
(mergesave-tr "g-ko" )        ; saves grammar with TR rules
(lg "g-ko")                ; lg assumes .ccg.lisp suffix
(p-aux '(Hankwuk-ey Sewul-i namtaymun-sicang-i pul-i na-ass-ta) 'S)

;; Dyirbal
(tr "g" '(dy) "dy-err.log")         ; Dyirbal TR
(mergesave-tr "g-dy" )        ; saves grammar with TR rules
(lg "g-dy")                ; lg assumes .ccg.lisp suffix
(p-aux '("bayi yara" numa-ngu giga-n gubi-ngu mawa-li)  'S)
(p-aux '("bayi yara" numa-ngu giga-n banaga-nyu) 'S)
(p '(bagul wanal-gu banul-din-gu yara-nu-n-din-gu))  ; use p---cannot retrieve only results onto high types
(ders)

;; German
(tr "g" '(de) "de-err.log")         ; German TR
(mergesave-tr "g-de" )        ; saves grammar with TR rules
(lg "g-de")                ; lg assumes .ccg.lisp suffix
(p-aux '("Dass sie kommt" glaubt er nicht)  'S)
(p-aux '("Die Diplomarbeit" zu schreiben hat "die Studentin" gelanweilt) 'S)
 
;; Hungarian
(tr "g" '(hu) "hu-err.log")         ; TR Magyar
(mergesave-tr "g-hu" )
(lg "g-hu")
(p-aux '(Janos lat-t-a ot)  'S)
(p-aux '(Janos lat-t-a engem) 'S)
(p-aux '(Janos lat-ott engem) 'S)
