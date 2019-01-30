(define (domain briefcase)
(:predicates (at ?y ?x)
             (in ?x ?b)
             (is-at ?x ?b)
             (closed ?b))


(:action move
  :parameters (?m ?l ?b)
  :precondition  (and (is-at ?m ?b) (closed ?b))
  :effect (and (not (closed ?b)) (is-at ?l ?b) (not (is-at ?m ?b))
		    (forall (?x) (when (in ?x ?b)
		      (and (at ?x ?l) (not (at ?x ?m)))))))

  (:action take-out
      :parameters (?x)
      :precondition (and (in ?x ?b)))
      :effect (and (closed ?b) (not (in ?x ?b))))
      
  (:action put-in
      :parameters (?x ?l ?b)
      :precondition (and (not (in ?x ?b)) (at ?x ?l) (is-at ?l ?b))
      :effect (and (closed ?b) (in ?x ?b)))

  (:action open
      :parameters (?b)
      :precondition (closed ?b)
      :effect (not (closed ?b)))
      
  (:action close
      :parameters (?b)
      :precondition (not (closed ?b))
      :effect (closed ?b)))
