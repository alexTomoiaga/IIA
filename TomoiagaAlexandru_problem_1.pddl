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
     l4
     l5
     l6

     )
  (:init
   (at p1 l4 )
   (at p2 l1 )
   (at p3 l1 )
   (at p4 l1 )
   (at p5 l1 )
   (at p6 l1 )
   (is-at l1 )

   )
  (:goal
   (and
   (at p1 l1 )
   (at p2 l2 )
   (at p3 l3 )
   (at p4 l4 )
   (at p5 l5 )
   (at p6 l6 ))
   ))
