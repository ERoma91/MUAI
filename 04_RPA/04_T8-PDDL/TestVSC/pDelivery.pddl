(define (problem pDelivery) (:domain dWarehouse)
    (:objects
        car1 - Vehicles
        city1 city2 - Locations
    )

    (:init
        ;todo: put the initial state's facts and numeric values here
        (into car1 city1)
    )

    (:goal
        (and (into car1 city2))
    )

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
