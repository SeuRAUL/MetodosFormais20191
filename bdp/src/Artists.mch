MACHINE Artists
SETS
    ARTISTS
PROPERTIES
    ARTISTS : FIN ( ARTISTS ) & card ( ARTISTS ) = 10
ABSTRACT_VARIABLES
    whites , colours , blacks , masters
INVARIANT
    whites <: ARTISTS  & colours <: ARTISTS & blacks <: ARTISTS & masters <: ARTISTS
    & whites /\ colours /\ blacks /\ masters = {}
INITIALISATION
    whites := {} || colours := {} || blacks := {} || masters := {}
OPERATIONS

    join_academy ( nn ) =
    PRE nn : ARTISTS & nn /: whites & nn /: colours & nn /: blacks & nn /: masters
    THEN whites := whites \/ { nn }
    END ;

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
