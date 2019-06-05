MACHINE 
    MartialAcademy
INCLUDES
    Artists, Tecniques
PROMOTES
    join_academy, graduate,
    insert_tecnique, up_tecnique, down_tecnique
CONSTANTS
    capacity
PROPERTIES 
    capacity : NAT1 & capacity <= 4096
VARIABLES
    artist_techniques
INVARIANT
    artist_techniques : ARTISTS <-> TECNIQUES
INITIALISATION
    artist_techniques := {}
OPERATIONS
    check_technical(aa, tt) =
    PRE aa : ARTISTS & tt : TECNIQUES
        & (aa : whites => tt : t_whites) & (aa : colours => tt : t_colours)
        & (aa : blacks => tt : t_blacks) & (aa : masters => tt : t_masters)
    THEN
        artist_techniques := artist_techniques \/ {aa |-> tt}
    END;

    mt <-- my_techniques(aa) = 
    PRE aa : ARTISTS
    THEN mt := 
    END
END

