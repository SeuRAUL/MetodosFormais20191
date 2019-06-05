MACHINE Tecniques
SETS
  TECNIQUES
PROPERTIES
  TECNIQUES : FIN(TECNIQUES) &
  card(TECNIQUES) = 100
VARIABLES
  t_whites, t_colours, t_blacks, t_masters
INVARIANT
  t_whites <: TECNIQUES & t_colours <: TECNIQUES & t_blacks <: TECNIQUES & t_masters <: TECNIQUES
  & t_whites /\ t_colours /\ t_blacks /\ t_masters = {}
INITIALISATION
  t_whites := {} || t_colours := {} || t_blacks := {} || t_masters := {}
OPERATIONS
  insert_tecnique(tt, grade) = 
    PRE tt : TECNIQUES & tt /: t_whites & tt /: t_colours & tt /: t_blacks & tt /: t_masters & grade : 1..4
    THEN 
      IF grade = 1
      THEN t_whites := t_whites \/ {tt}
      ELSE
        IF grade = 2
        THEN t_colours := t_colours \/ {tt}
        ELSE
          IF grade = 3
          THEN t_blacks := t_blacks \/ {tt}
          ELSE
            IF grade = 4
            THEN t_masters := t_masters \/ {tt}
            END
          END
        END
      END
    END;
	
    up_tecnique(tt) = 
    PRE tt : TECNIQUES & tt : t_whites \/ t_colours \/ t_blacks
    THEN
        IF tt : t_whites
        THEN t_whites := t_whites - {tt} || t_colours := t_colours \/ {tt}
        ELSE
            IF tt : t_colours
            THEN t_colours := t_colours - {tt} || t_blacks := t_blacks \/ {tt}
            ELSE
                IF tt : t_blacks
                THEN t_blacks := t_blacks - {tt} || t_masters := t_masters \/ {tt}
                END
            END
        END
    END;
	
    down_tecnique(tt) = 
    PRE tt : TECNIQUES & tt : t_colours \/ t_blacks \/ t_masters
    THEN
        IF tt : t_colours
        THEN t_colours := t_colours - {tt} || t_whites := t_whites \/ {tt}
        ELSE
            IF tt : t_blacks
            THEN t_blacks := t_blacks - {tt} || t_colours := t_colours \/ {tt}
            ELSE
                IF tt : t_masters
                THEN t_masters := t_masters - {tt} || t_blacks := t_blacks \/ {tt}
                END
            END
        END
    END
END

