(defparameter *data* '(
(1 (adam -in oku -dugu kitap))
(2 (adam -in oku -yan kitap))
(3 (kitap -i oku -yan adam))
(4 (kitap -i oku -dugu adam))
(5 (uyu -ma -yan adam)) ; 2 analyses for this one, one phrasal one lexical, same lf
))

(defun  test-ders() ;; derivations test--going through all of them
  (status)
  (pprint (which-ccglab))
  (dolist (p *data*)(progn (ccg-deduce (second p))
			   (format t "~%=======~%~s~%~s~%========~%" (first p)(second p))
			   (cky-show-deduction))))

(defun  test-lfs() ;; verifying lfs for well formedness --- adequacy is up to you
  (dolist (p *data*)
    (progn (ccg-deduce (second p))
	   (format t "~%=======~%~s~%~s~%========~%" (first p)(second p))
	   (cky-show-lf-eqv))))
