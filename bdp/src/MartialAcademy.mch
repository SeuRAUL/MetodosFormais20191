MACHINE
    MartialAcademy
INCLUDES
    Artists , Tecniques
PROMOTES
    join_academy , graduate ,
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
    END
END
