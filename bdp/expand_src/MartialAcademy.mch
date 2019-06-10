MACHINE
    MartialAcademy
INCLUDES
    Artists , Tecniques
PROMOTES
    join_academy , // graduate,
    insert_tecnique , up_tecnique , down_tecnique
CONCRETE_CONSTANTS
    capacity
PROPERTIES
    capacity : NAT1 & capacity <= 4096
ABSTRACT_VARIABLES
    artist_techniques
INVARIANT
    artist_techniques : ARTISTS <-> TECNIQUES
INITIALISATION
    artist_techniques := {}
OPERATIONS
    check_technical ( aa , tt ) =
    PRE aa : ARTISTS & tt : TECNIQUES
        & ( aa : whites => tt : t_whites ) & ( aa : colours => tt : t_colours )
        & ( aa : blacks => tt : t_blacks ) & ( aa : masters => tt : t_masters )
    THEN
        artist_techniques := artist_techniques \/ { aa |-> tt }
    END ;

//    mt <-- my_techniques(aa) = 
//    PRE aa : ARTISTS
//    THEN mt := ran({aa} <| artist_techniques)
//    END;

    graduate ( aa ) =
    PRE aa : ARTISTS & aa : whites \/ colours \/ blacks
    THEN
        IF aa : whites
        THEN whites := whites - { aa } || colours := colours \/ { aa }
        ELSE
            IF aa : colours
            THEN colours := colours - { aa } || blacks := blacks \/ { aa }
            ELSE
                IF aa : blacks
                THEN blacks := blacks - { aa } || masters := masters \/ { aa }
                END
            END
        END
    END
END
