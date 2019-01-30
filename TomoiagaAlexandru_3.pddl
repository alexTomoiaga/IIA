(define (problem brief)
  (:domain briefcase)
  (:objects
     p1
     p2
     p3
     p4
     p5
     p6
     
     l2
     l1
     l3
     )
  (:init
   (at p1 l2 )
   (at p2 l3 )
   (at p3 l2 )
   (at p4 l2 )
   (at p5 l1 )
   (at p6 l3 )

   (is-at l1))
  (:goal
   (and
   (at p1 l1 )
   (at p2 l1 )
   (at p3 l2 )
   (at p4 l2 )
   (at p5 l3 )
   (at p6 l3 )
)
   ))
