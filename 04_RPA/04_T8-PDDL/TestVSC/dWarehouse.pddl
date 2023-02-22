;Header and description

(define (domain dWarehouse)

    ;remove requirements that are not needed
    (:requirements :typing :equality :negative-preconditions)

    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        Vehicles
        Locations
    )

    ; un-comment following line if constants are needed
    ;(:constants )

    (:predicates ;todo: define predicates here
        (into ?Vehicle ?Location) ;VehiculoX en LugarX
    )


    (:functions ;todo: define numeric functions here
    )

    ;define actions here
    (:action toMove
        :parameters (?Vehicle1 - Vehicles 
                     ?Location1 ?Location2 - Locations)
        :precondition (and (into ?Vehicle1 ?Location1))
        :effect (and (into ?Vehicle1 ?Location2) (not (into ?Vehicle1 ?Location1)))
    )
)