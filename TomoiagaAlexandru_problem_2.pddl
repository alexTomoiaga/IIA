(define (problem brief)
  (:domain briefcase)
  (:objects
     p1
     p2
     l2
     l1

     )
  (:init
   (at p1 l2 )
   (at p2 l1 )
     (is-at l1)

   )
  (:goal
   (and
   (at p1 l1 )
   (at p2 l2 )
)
   ))
