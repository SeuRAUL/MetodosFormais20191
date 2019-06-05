Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MartialAcademy))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MartialAcademy))==(Machine(MartialAcademy));
  Level(Machine(MartialAcademy))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MartialAcademy)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MartialAcademy))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MartialAcademy))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MartialAcademy))==(Tecniques,Artists);
  List_Includes(Machine(MartialAcademy))==(Artists,Tecniques)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MartialAcademy))==(join_academy,graduate,insert_tecnique,up_tecnique,down_tecnique)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MartialAcademy))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MartialAcademy))==(?);
  Context_List_Variables(Machine(MartialAcademy))==(?);
  Abstract_List_Variables(Machine(MartialAcademy))==(?);
  Local_List_Variables(Machine(MartialAcademy))==(artist_techniques);
  List_Variables(Machine(MartialAcademy))==(artist_techniques,masters,blacks,colours,whites,t_masters,t_blacks,t_colours,t_whites);
  External_List_Variables(Machine(MartialAcademy))==(artist_techniques,masters,blacks,colours,whites,t_masters,t_blacks,t_colours,t_whites)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MartialAcademy))==(?);
  Abstract_List_VisibleVariables(Machine(MartialAcademy))==(?);
  External_List_VisibleVariables(Machine(MartialAcademy))==(?);
  Expanded_List_VisibleVariables(Machine(MartialAcademy))==(?);
  List_VisibleVariables(Machine(MartialAcademy))==(?);
  Internal_List_VisibleVariables(Machine(MartialAcademy))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MartialAcademy))==(btrue);
  Gluing_List_Invariant(Machine(MartialAcademy))==(btrue);
  Abstract_List_Invariant(Machine(MartialAcademy))==(btrue);
  Expanded_List_Invariant(Machine(MartialAcademy))==(whites <: ARTISTS & colours <: ARTISTS & blacks <: ARTISTS & masters <: ARTISTS & whites/\colours/\blacks/\masters = {} & t_whites <: TECNIQUES & t_colours <: TECNIQUES & t_blacks <: TECNIQUES & t_masters <: TECNIQUES & t_whites/\t_colours/\t_blacks/\t_masters = {});
  Context_List_Invariant(Machine(MartialAcademy))==(btrue);
  List_Invariant(Machine(MartialAcademy))==(artist_techniques: ARTISTS <-> TECNIQUES)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(MartialAcademy))==(btrue);
  Expanded_List_Assertions(Machine(MartialAcademy))==(btrue);
  Context_List_Assertions(Machine(MartialAcademy))==(btrue);
  List_Assertions(Machine(MartialAcademy))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MartialAcademy))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MartialAcademy))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MartialAcademy))==(whites,colours,blacks,masters:={},{},{},{};t_whites,t_colours,t_blacks,t_masters:={},{},{},{};artist_techniques:={});
  Context_List_Initialisation(Machine(MartialAcademy))==(skip);
  List_Initialisation(Machine(MartialAcademy))==(artist_techniques:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MartialAcademy))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(MartialAcademy),Machine(Artists))==(?);
  List_Instanciated_Parameters(Machine(MartialAcademy),Machine(Tecniques))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(MartialAcademy),Machine(Tecniques))==(btrue);
  List_Context_Constraints(Machine(MartialAcademy))==(btrue);
  List_Constraints(Machine(MartialAcademy))==(btrue);
  List_Constraints(Machine(MartialAcademy),Machine(Artists))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MartialAcademy))==(check_technical,join_academy,graduate,insert_tecnique,up_tecnique,down_tecnique);
  List_Operations(Machine(MartialAcademy))==(check_technical,join_academy,graduate,insert_tecnique,up_tecnique,down_tecnique)
END
&
THEORY ListInputX IS
  List_Input(Machine(MartialAcademy),down_tecnique)==(tt);
  List_Input(Machine(MartialAcademy),up_tecnique)==(tt);
  List_Input(Machine(MartialAcademy),insert_tecnique)==(tt,grade);
  List_Input(Machine(MartialAcademy),graduate)==(aa);
  List_Input(Machine(MartialAcademy),join_academy)==(nn);
  List_Input(Machine(MartialAcademy),check_technical)==(aa,tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MartialAcademy),down_tecnique)==(?);
  List_Output(Machine(MartialAcademy),up_tecnique)==(?);
  List_Output(Machine(MartialAcademy),insert_tecnique)==(?);
  List_Output(Machine(MartialAcademy),graduate)==(?);
  List_Output(Machine(MartialAcademy),join_academy)==(?);
  List_Output(Machine(MartialAcademy),check_technical)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MartialAcademy),down_tecnique)==(down_tecnique(tt));
  List_Header(Machine(MartialAcademy),up_tecnique)==(up_tecnique(tt));
  List_Header(Machine(MartialAcademy),insert_tecnique)==(insert_tecnique(tt,grade));
  List_Header(Machine(MartialAcademy),graduate)==(graduate(aa));
  List_Header(Machine(MartialAcademy),join_academy)==(join_academy(nn));
  List_Header(Machine(MartialAcademy),check_technical)==(check_technical(aa,tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(MartialAcademy),down_tecnique)==(tt: TECNIQUES & tt: t_colours\/t_blacks\/t_masters);
  List_Precondition(Machine(MartialAcademy),down_tecnique)==(tt: TECNIQUES & tt: t_colours\/t_blacks\/t_masters);
  Own_Precondition(Machine(MartialAcademy),up_tecnique)==(tt: TECNIQUES & tt: t_whites\/t_colours\/t_blacks);
  List_Precondition(Machine(MartialAcademy),up_tecnique)==(tt: TECNIQUES & tt: t_whites\/t_colours\/t_blacks);
  Own_Precondition(Machine(MartialAcademy),insert_tecnique)==(tt: TECNIQUES & tt/:t_whites & tt/:t_colours & tt/:t_blacks & tt/:t_masters & grade: 1..4);
  List_Precondition(Machine(MartialAcademy),insert_tecnique)==(tt: TECNIQUES & tt/:t_whites & tt/:t_colours & tt/:t_blacks & tt/:t_masters & grade: 1..4);
  Own_Precondition(Machine(MartialAcademy),graduate)==(aa: ARTISTS & aa: whites\/colours\/blacks);
  List_Precondition(Machine(MartialAcademy),graduate)==(aa: ARTISTS & aa: whites\/colours\/blacks);
  Own_Precondition(Machine(MartialAcademy),join_academy)==(nn: ARTISTS & nn/:whites & nn/:colours & nn/:blacks & nn/:masters);
  List_Precondition(Machine(MartialAcademy),join_academy)==(nn: ARTISTS & nn/:whites & nn/:colours & nn/:blacks & nn/:masters);
  List_Precondition(Machine(MartialAcademy),check_technical)==(aa: ARTISTS & tt: TECNIQUES & (aa: whites => tt: t_whites) & (aa: colours => tt: t_colours) & (aa: blacks => tt: t_blacks) & (aa: masters => tt: t_masters))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MartialAcademy),check_technical)==(aa: ARTISTS & tt: TECNIQUES & (aa: whites => tt: t_whites) & (aa: colours => tt: t_colours) & (aa: blacks => tt: t_blacks) & (aa: masters => tt: t_masters) | artist_techniques:=artist_techniques\/{aa|->tt});
  List_Substitution(Machine(MartialAcademy),down_tecnique)==(IF tt: t_colours THEN t_colours:=t_colours-{tt} || t_whites:=t_whites\/{tt} ELSE IF tt: t_blacks THEN t_blacks:=t_blacks-{tt} || t_colours:=t_colours\/{tt} ELSE IF tt: t_masters THEN t_masters:=t_masters-{tt} || t_blacks:=t_blacks\/{tt} END END END);
  Expanded_List_Substitution(Machine(MartialAcademy),down_tecnique)==(tt: TECNIQUES & tt: t_colours\/t_blacks\/t_masters | tt: t_colours ==> t_colours,t_whites:=t_colours-{tt},t_whites\/{tt} [] not(tt: t_colours) ==> (tt: t_blacks ==> t_blacks,t_colours:=t_blacks-{tt},t_colours\/{tt} [] not(tt: t_blacks) ==> (tt: t_masters ==> t_masters,t_blacks:=t_masters-{tt},t_blacks\/{tt} [] not(tt: t_masters) ==> skip)));
  List_Substitution(Machine(MartialAcademy),up_tecnique)==(IF tt: t_whites THEN t_whites:=t_whites-{tt} || t_colours:=t_colours\/{tt} ELSE IF tt: t_colours THEN t_colours:=t_colours-{tt} || t_blacks:=t_blacks\/{tt} ELSE IF tt: t_blacks THEN t_blacks:=t_blacks-{tt} || t_masters:=t_masters\/{tt} END END END);
  Expanded_List_Substitution(Machine(MartialAcademy),up_tecnique)==(tt: TECNIQUES & tt: t_whites\/t_colours\/t_blacks | tt: t_whites ==> t_whites,t_colours:=t_whites-{tt},t_colours\/{tt} [] not(tt: t_whites) ==> (tt: t_colours ==> t_colours,t_blacks:=t_colours-{tt},t_blacks\/{tt} [] not(tt: t_colours) ==> (tt: t_blacks ==> t_blacks,t_masters:=t_blacks-{tt},t_masters\/{tt} [] not(tt: t_blacks) ==> skip)));
  List_Substitution(Machine(MartialAcademy),insert_tecnique)==(IF grade = 1 THEN t_whites:=t_whites\/{tt} ELSE IF grade = 2 THEN t_colours:=t_colours\/{tt} ELSE IF grade = 3 THEN t_blacks:=t_blacks\/{tt} ELSE IF grade = 4 THEN t_masters:=t_masters\/{tt} END END END END);
  Expanded_List_Substitution(Machine(MartialAcademy),insert_tecnique)==(tt: TECNIQUES & tt/:t_whites & tt/:t_colours & tt/:t_blacks & tt/:t_masters & grade: 1..4 | grade = 1 ==> t_whites:=t_whites\/{tt} [] not(grade = 1) ==> (grade = 2 ==> t_colours:=t_colours\/{tt} [] not(grade = 2) ==> (grade = 3 ==> t_blacks:=t_blacks\/{tt} [] not(grade = 3) ==> (grade = 4 ==> t_masters:=t_masters\/{tt} [] not(grade = 4) ==> skip))));
  List_Substitution(Machine(MartialAcademy),graduate)==(IF aa: whites THEN whites:=whites-{aa} || colours:=colours\/{aa} ELSE IF aa: colours THEN colours:=colours-{aa} || blacks:=blacks\/{aa} ELSE IF aa: blacks THEN blacks:=blacks-{aa} || masters:=masters\/{aa} END END END);
  Expanded_List_Substitution(Machine(MartialAcademy),graduate)==(aa: ARTISTS & aa: whites\/colours\/blacks | aa: whites ==> whites,colours:=whites-{aa},colours\/{aa} [] not(aa: whites) ==> (aa: colours ==> colours,blacks:=colours-{aa},blacks\/{aa} [] not(aa: colours) ==> (aa: blacks ==> blacks,masters:=blacks-{aa},masters\/{aa} [] not(aa: blacks) ==> skip)));
  List_Substitution(Machine(MartialAcademy),join_academy)==(whites:=whites\/{nn});
  Expanded_List_Substitution(Machine(MartialAcademy),join_academy)==(nn: ARTISTS & nn/:whites & nn/:colours & nn/:blacks & nn/:masters | whites:=whites\/{nn});
  List_Substitution(Machine(MartialAcademy),check_technical)==(artist_techniques:=artist_techniques\/{aa|->tt})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MartialAcademy))==(capacity);
  Inherited_List_Constants(Machine(MartialAcademy))==(?);
  List_Constants(Machine(MartialAcademy))==(capacity)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(MartialAcademy),TECNIQUES)==(?);
  Context_List_Enumerated(Machine(MartialAcademy))==(?);
  Context_List_Defered(Machine(MartialAcademy))==(?);
  Context_List_Sets(Machine(MartialAcademy))==(?);
  List_Valuable_Sets(Machine(MartialAcademy))==(ARTISTS,TECNIQUES);
  Inherited_List_Enumerated(Machine(MartialAcademy))==(?);
  Inherited_List_Defered(Machine(MartialAcademy))==(ARTISTS,TECNIQUES);
  Inherited_List_Sets(Machine(MartialAcademy))==(ARTISTS,TECNIQUES);
  List_Enumerated(Machine(MartialAcademy))==(?);
  List_Defered(Machine(MartialAcademy))==(?);
  List_Sets(Machine(MartialAcademy))==(?);
  Set_Definition(Machine(MartialAcademy),ARTISTS)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MartialAcademy))==(?);
  Expanded_List_HiddenConstants(Machine(MartialAcademy))==(?);
  List_HiddenConstants(Machine(MartialAcademy))==(?);
  External_List_HiddenConstants(Machine(MartialAcademy))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MartialAcademy))==(btrue);
  Context_List_Properties(Machine(MartialAcademy))==(btrue);
  Inherited_List_Properties(Machine(MartialAcademy))==(ARTISTS: FIN(ARTISTS) & card(ARTISTS) = 10 & ARTISTS: FIN(INTEGER) & not(ARTISTS = {}) & TECNIQUES: FIN(TECNIQUES) & card(TECNIQUES) = 100 & TECNIQUES: FIN(INTEGER) & not(TECNIQUES = {}));
  List_Properties(Machine(MartialAcademy))==(capacity: NAT1 & capacity<=4096)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MartialAcademy),down_tecnique)==(?);
  List_ANY_Var(Machine(MartialAcademy),up_tecnique)==(?);
  List_ANY_Var(Machine(MartialAcademy),insert_tecnique)==(?);
  List_ANY_Var(Machine(MartialAcademy),graduate)==(?);
  List_ANY_Var(Machine(MartialAcademy),join_academy)==(?);
  List_ANY_Var(Machine(MartialAcademy),check_technical)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MartialAcademy)) == (capacity | TECNIQUES,ARTISTS | artist_techniques | V,t_masters,t_blacks,t_colours,t_whites,masters,blacks,colours,whites | check_technical | join_academy,graduate,insert_tecnique,up_tecnique,down_tecnique | included(Machine(Artists)),included(Machine(Tecniques)) | ? | MartialAcademy);
  List_Of_HiddenCst_Ids(Machine(MartialAcademy)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MartialAcademy)) == (capacity);
  List_Of_VisibleVar_Ids(Machine(MartialAcademy)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MartialAcademy)) == (?: ?);
  List_Of_Ids(Machine(Tecniques)) == (TECNIQUES | ? | t_masters,t_blacks,t_colours,t_whites | ? | insert_tecnique,up_tecnique,down_tecnique | ? | ? | ? | Tecniques);
  List_Of_HiddenCst_Ids(Machine(Tecniques)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Tecniques)) == (?);
  List_Of_VisibleVar_Ids(Machine(Tecniques)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Tecniques)) == (?: ?);
  List_Of_Ids(Machine(Artists)) == (ARTISTS | ? | masters,blacks,colours,whites | ? | join_academy,graduate | ? | ? | ? | Artists);
  List_Of_HiddenCst_Ids(Machine(Artists)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Artists)) == (?);
  List_Of_VisibleVar_Ids(Machine(Artists)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Artists)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(MartialAcademy)) == (Type(ARTISTS) == Cst(SetOf(atype(ARTISTS,"[ARTISTS","]ARTISTS")));Type(TECNIQUES) == Cst(SetOf(atype(TECNIQUES,"[TECNIQUES","]TECNIQUES"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(MartialAcademy)) == (Type(capacity) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(MartialAcademy)) == (Type(whites) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(colours) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(blacks) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(masters) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(t_whites) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(t_colours) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(t_blacks) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(t_masters) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(artist_techniques) == Mvl(SetOf(atype(ARTISTS,?,?)*atype(TECNIQUES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MartialAcademy)) == (Type(join_academy) == Cst(No_type,atype(ARTISTS,?,?));Type(graduate) == Cst(No_type,atype(ARTISTS,?,?));Type(insert_tecnique) == Cst(No_type,atype(TECNIQUES,?,?)*btype(INTEGER,?,?));Type(up_tecnique) == Cst(No_type,atype(TECNIQUES,?,?));Type(down_tecnique) == Cst(No_type,atype(TECNIQUES,?,?));Type(check_technical) == Cst(No_type,atype(ARTISTS,?,?)*atype(TECNIQUES,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
