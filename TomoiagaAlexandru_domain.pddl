(define (domain briefcase)
(:predicates (at ?y ?x)
             (in ?x)
             (is-at ?x))



(:action move
  :parameters (?m ?l)
  :precondition  (is-at ?m)
  :effect (and (is-at ?l) (not (is-at ?m))
		    (forall (?x) (when (in ?x)
		      (and (at ?x ?l) (not (at ?x ?m)))))))

  (:action take-out
      :parameters (?x)
      :precondition (in ?x)
      :effect (not (in ?x)))
      
  (:action put-in
      :parameters (?x ?l)
      :precondition (and (not (in ?x)) (at ?x ?l) (is-at ?l))
      :effect (in ?x)))


