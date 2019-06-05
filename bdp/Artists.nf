Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Artists))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Artists))==(Machine(Artists));
  Level(Machine(Artists))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Artists)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Artists))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Artists))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Artists))==(?);
  List_Includes(Machine(Artists))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Artists))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Artists))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Artists))==(?);
  Context_List_Variables(Machine(Artists))==(?);
  Abstract_List_Variables(Machine(Artists))==(?);
  Local_List_Variables(Machine(Artists))==(masters,blacks,colours,whites);
  List_Variables(Machine(Artists))==(masters,blacks,colours,whites);
  External_List_Variables(Machine(Artists))==(masters,blacks,colours,whites)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Artists))==(?);
  Abstract_List_VisibleVariables(Machine(Artists))==(?);
  External_List_VisibleVariables(Machine(Artists))==(?);
  Expanded_List_VisibleVariables(Machine(Artists))==(?);
  List_VisibleVariables(Machine(Artists))==(?);
  Internal_List_VisibleVariables(Machine(Artists))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Artists))==(btrue);
  Gluing_List_Invariant(Machine(Artists))==(btrue);
  Expanded_List_Invariant(Machine(Artists))==(btrue);
  Abstract_List_Invariant(Machine(Artists))==(btrue);
  Context_List_Invariant(Machine(Artists))==(btrue);
  List_Invariant(Machine(Artists))==(whites <: ARTISTS & colours <: ARTISTS & blacks <: ARTISTS & masters <: ARTISTS & whites/\colours/\blacks/\masters = {})
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Artists))==(btrue);
  Abstract_List_Assertions(Machine(Artists))==(btrue);
  Context_List_Assertions(Machine(Artists))==(btrue);
  List_Assertions(Machine(Artists))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Artists))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Artists))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Artists))==(whites,colours,blacks,masters:={},{},{},{});
  Context_List_Initialisation(Machine(Artists))==(skip);
  List_Initialisation(Machine(Artists))==(whites:={} || colours:={} || blacks:={} || masters:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Artists))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Artists))==(btrue);
  List_Constraints(Machine(Artists))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Artists))==(join_academy,graduate);
  List_Operations(Machine(Artists))==(join_academy,graduate)
END
&
THEORY ListInputX IS
  List_Input(Machine(Artists),join_academy)==(nn);
  List_Input(Machine(Artists),graduate)==(aa)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Artists),join_academy)==(?);
  List_Output(Machine(Artists),graduate)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Artists),join_academy)==(join_academy(nn));
  List_Header(Machine(Artists),graduate)==(graduate(aa))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Artists),join_academy)==(nn: ARTISTS & nn/:whites & nn/:colours & nn/:blacks & nn/:masters);
  List_Precondition(Machine(Artists),graduate)==(aa: ARTISTS & aa: whites\/colours\/blacks)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Artists),graduate)==(aa: ARTISTS & aa: whites\/colours\/blacks | aa: whites ==> whites,colours:=whites-{aa},colours\/{aa} [] not(aa: whites) ==> (aa: colours ==> colours,blacks:=colours-{aa},blacks\/{aa} [] not(aa: colours) ==> (aa: blacks ==> blacks,masters:=blacks-{aa},masters\/{aa} [] not(aa: blacks) ==> skip)));
  Expanded_List_Substitution(Machine(Artists),join_academy)==(nn: ARTISTS & nn/:whites & nn/:colours & nn/:blacks & nn/:masters | whites:=whites\/{nn});
  List_Substitution(Machine(Artists),join_academy)==(whites:=whites\/{nn});
  List_Substitution(Machine(Artists),graduate)==(IF aa: whites THEN whites:=whites-{aa} || colours:=colours\/{aa} ELSE IF aa: colours THEN colours:=colours-{aa} || blacks:=blacks\/{aa} ELSE IF aa: blacks THEN blacks:=blacks-{aa} || masters:=masters\/{aa} END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Artists))==(?);
  Inherited_List_Constants(Machine(Artists))==(?);
  List_Constants(Machine(Artists))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Artists),ARTISTS)==(?);
  Context_List_Enumerated(Machine(Artists))==(?);
  Context_List_Defered(Machine(Artists))==(?);
  Context_List_Sets(Machine(Artists))==(?);
  List_Valuable_Sets(Machine(Artists))==(ARTISTS);
  Inherited_List_Enumerated(Machine(Artists))==(?);
  Inherited_List_Defered(Machine(Artists))==(?);
  Inherited_List_Sets(Machine(Artists))==(?);
  List_Enumerated(Machine(Artists))==(?);
  List_Defered(Machine(Artists))==(ARTISTS);
  List_Sets(Machine(Artists))==(ARTISTS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Artists))==(?);
  Expanded_List_HiddenConstants(Machine(Artists))==(?);
  List_HiddenConstants(Machine(Artists))==(?);
  External_List_HiddenConstants(Machine(Artists))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Artists))==(btrue);
  Context_List_Properties(Machine(Artists))==(btrue);
  Inherited_List_Properties(Machine(Artists))==(btrue);
  List_Properties(Machine(Artists))==(ARTISTS: FIN(ARTISTS) & card(ARTISTS) = 10 & ARTISTS: FIN(INTEGER) & not(ARTISTS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Artists),join_academy)==(?);
  List_ANY_Var(Machine(Artists),graduate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Artists)) == (ARTISTS | ? | masters,blacks,colours,whites | ? | join_academy,graduate | ? | ? | ? | Artists);
  List_Of_HiddenCst_Ids(Machine(Artists)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Artists)) == (?);
  List_Of_VisibleVar_Ids(Machine(Artists)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Artists)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Artists)) == (Type(ARTISTS) == Cst(SetOf(atype(ARTISTS,"[ARTISTS","]ARTISTS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Artists)) == (Type(masters) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(blacks) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(colours) == Mvl(SetOf(atype(ARTISTS,?,?)));Type(whites) == Mvl(SetOf(atype(ARTISTS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Artists)) == (Type(graduate) == Cst(No_type,atype(ARTISTS,?,?));Type(join_academy) == Cst(No_type,atype(ARTISTS,?,?)))
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
