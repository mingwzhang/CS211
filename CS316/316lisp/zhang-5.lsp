;;; Zhang Mingwei

;;; Solution to Problem 1
 (defun INDEX (N L)
    (cond ((null L) 'ERROR)
          ((equal N 1) (car L))
          (t (INDEX (- N 1) (cdr L)))))

;;; Solution to Problem 2
 (defun MIN-FIRST (L)
    (if (endp (cdr L)) L
        (let ((X (MIN-FIRST (cdr L))))
             (if (<= (car L) (car X)) L
                 (cons (car X) (cons (car L) (cdr X)))))))

;;; Solution to Problem 3
(defun SSORT (L)
    (if (endp (cdr L)) L
        (let* ((X (MIN-FIRST L))
               (Y (SSORT (cdr X))))
              (cons (car X) Y))))

;;; Solution to Problem 4   
(defun PARTITION (L p)
    (if (null L) (list NIL NIL)   
        (let ((X (PARTITION (cdr L) p)))
            (if (< (car L) p)
                (list (cons (car L) (car X)) (cadr X))
                (list (car X) (cons (car L) (cadr X)))))))
(defun qsort (L)
    (if (endp L) NIL
        (let ((pL (PARTITION (cdr L) (car L))))
             (append (qsort(car pL)) (cons (car L) (qsort (cadr pL)))))))                

;;; Solution to Problem 5
(defun MERGE-LISTS (L1 L2)
    (if (or (endp L1) (endp L2)) (or L1 L2)
        (let ((X (MERGE-LISTS (cdr L1) L2)) (Y (MERGE-LISTS L1 (cdr L2))))
             (if (< (car L1) (car L2)) 
                 (cons (car L1) X)
                 (cons (car L2) Y)))))

;;; Solution to Problem 6
(defun SPLIT-LIST (L)
    (if (null L) (list NIL NIL)
        (let ((X (SPLIT-LIST (cdr L))))
             (list (cons (car L) (cadr X)) (car X)))))

(defun MSORT (L)
    (if (null L) NIL
        (let ((X (SPLIT-LIST L)))
            (if (null (cadr X))
                (MERGE-LISTS (car X) (cadr X))
                (MERGE-LISTS (MSORT (car X)) (MSORT(cadr X)))))))

;;; Solution to Problem 7
;;; Solution to Problem 8
;;; Solution to Problem 9
;;; Solution to Problem 10
;;; Solution to Problem 11
;;; Solution to Problem 12
;;; Solution to Problem 13
;;; Solution to Problem 14
;;; Solution to Problem 15
;;; Solution to Problem 16
