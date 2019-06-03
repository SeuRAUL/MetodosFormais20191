MACHINE 
    MartialAcademy
INCLUDES
    Artists, Tecniques
PROMOTES
    join_academy, graduate,
    insert_tecnique, up_tecnique, down_tecnique
//SETS
    //ARTISTS; TECNIQUES
CONSTANTS
    capacity
PROPERTIES 
    capacity : NAT1 & capacity <= 4096 
    //& card(ARTISTS) = 10 & card(TECNIQUES) = 200
//VARIABLES
    //whites, colours, blacks, masters
    //, t_whites, t_colours, t_blacks, t_masters
//INVARIANT
	//whites <: ARTISTS  & colours <: ARTISTS & blacks <: ARTISTS & masters <: ARTISTS
	//& whites /\ colours /\ blacks /\ masters = {}
	//& t_whites <: TECNIQUES & t_colours <: TECNIQUES & t_blacks <: TECNIQUES & t_masters <: TECNIQUES
	//& t_whites /\ t_colours /\ t_blacks /\ t_masters = {}
//INITIALISATION
	//whites := {} || colours := {} || blacks := {} || masters := {}
	//|| t_whites := {} || t_colours := {} || t_blacks := {} || t_masters := {}

	
END

