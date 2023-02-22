(define (domain rutas-clase)
    (:requirements :typing :equality :negative-preconditions)
(:types movil cargable lugar )
        (:predicates (en ?veh ?loc) ; El vehiculo veh esta en loc
                (conectada ?loc1 ?loc2)
            (cargado ?paquete1 ?veh) ; el paquete esta en el vehiculo veh
             (cargable ?x)
       )
    
    (:action mover ; esta accion mueve el vehiculo entre loc1 y loc2
                   ; siempre que ambas esten conectadas
                    ; Solo para vehiculos
        :parameters (?veh - movil 
            ?loc1 ?loc2 - lugar)
        :precondition (and (en ?veh ?loc1)
                    (conectada ?loc1 ?loc2)
        )
        :effect  (and (en ?veh ?loc2) (not (en ?veh ?loc1)) )
        )
    
    (:action cargar ; esta accion carga un paquete en un vehiculo
                   ; siempre que ambos esten en el mismo sitio
                    ; solo para paquetes
        :parameters (?paq - cargable 
            ?veh  - movil
            ?loc1 - lugar)
        :precondition (and (en ?veh ?loc1)
                    (en ?paq ?loc1)
                    (cargable ?paq)
        ) ; en(VEH,L1) AND en (PAQ,LOC1)
        :effect  (and (cargado ?paq ?veh) 
                (not (en ?paq ?loc1)) )
        )
    
)


