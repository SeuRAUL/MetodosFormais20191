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
    PRE aa : ARTISTS & (aa : whites \/ colours \/ blacks \/ masters) & tt : TECNIQUES
        & (aa : whites => tt : t_whites) & (aa : colours => tt : t_colours)
        & (aa : blacks => tt : t_blacks) & (aa : masters => tt : t_masters)
    THEN
        artist_techniques := artist_techniques \/ {aa |-> tt}
    END;

//    mt <-- my_techniques(aa) = 
//    PRE aa : ARTISTS
//    THEN mt := ran({aa} <| artist_techniques)
//    END;
    
    graduate_student(aa) = 
    PRE aa : ARTISTS & aa : whites \/ colours \/ blacks
        & (aa : whites => (ran({aa} <| artist_techniques) <<: t_whites))
        & (aa : colours => (ran({aa} <| artist_techniques) - t_colours = {}))
        & (aa : blacks => (ran({aa} <| artist_techniques) - t_blacks = {}))
    THEN
        graduate(aa)
//        IF aa : whites
//        THEN whites := whites - {aa} || colours := colours \/ {aa}
//        ELSE
//            IF aa : colours
//            THEN colours := colours - {aa} || blacks := blacks \/ {aa}
//            ELSE
//                IF aa : blacks
//                THEN blacks := blacks - {aa} || masters := masters \/ {aa}
//                END
//            END
//        END
    END
END

