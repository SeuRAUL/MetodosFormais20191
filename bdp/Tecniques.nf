Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Tecniques))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Tecniques))==(Machine(Tecniques));
  Level(Machine(Tecniques))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Tecniques)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Tecniques))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Tecniques))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Tecniques))==(?);
  List_Includes(Machine(Tecniques))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Tecniques))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Tecniques))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Tecniques))==(?);
  Context_List_Variables(Machine(Tecniques))==(?);
  Abstract_List_Variables(Machine(Tecniques))==(?);
  Local_List_Variables(Machine(Tecniques))==(t_masters,t_blacks,t_colours,t_whites);
  List_Variables(Machine(Tecniques))==(t_masters,t_blacks,t_colours,t_whites);
  External_List_Variables(Machine(Tecniques))==(t_masters,t_blacks,t_colours,t_whites)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Tecniques))==(?);
  Abstract_List_VisibleVariables(Machine(Tecniques))==(?);
  External_List_VisibleVariables(Machine(Tecniques))==(?);
  Expanded_List_VisibleVariables(Machine(Tecniques))==(?);
  List_VisibleVariables(Machine(Tecniques))==(?);
  Internal_List_VisibleVariables(Machine(Tecniques))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Tecniques))==(btrue);
  Gluing_List_Invariant(Machine(Tecniques))==(btrue);
  Expanded_List_Invariant(Machine(Tecniques))==(btrue);
  Abstract_List_Invariant(Machine(Tecniques))==(btrue);
  Context_List_Invariant(Machine(Tecniques))==(btrue);
  List_Invariant(Machine(Tecniques))==(t_whites <: TECNIQUES & t_colours <: TECNIQUES & t_blacks <: TECNIQUES & t_masters <: TECNIQUES & t_whites/\t_colours/\t_blacks/\t_masters = {})
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Tecniques))==(btrue);
  Abstract_List_Assertions(Machine(Tecniques))==(btrue);
  Context_List_Assertions(Machine(Tecniques))==(btrue);
  List_Assertions(Machine(Tecniques))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Tecniques))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Tecniques))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Tecniques))==(t_whites,t_colours,t_blacks,t_masters:={},{},{},{});
  Context_List_Initialisation(Machine(Tecniques))==(skip);
  List_Initialisation(Machine(Tecniques))==(t_whites:={} || t_colours:={} || t_blacks:={} || t_masters:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Tecniques))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Tecniques))==(btrue);
  List_Constraints(Machine(Tecniques))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Tecniques))==(insert_tecnique,up_tecnique,down_tecnique);
  List_Operations(Machine(Tecniques))==(insert_tecnique,up_tecnique,down_tecnique)
END
&
THEORY ListInputX IS
  List_Input(Machine(Tecniques),insert_tecnique)==(tt,grade);
  List_Input(Machine(Tecniques),up_tecnique)==(tt);
  List_Input(Machine(Tecniques),down_tecnique)==(tt)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Tecniques),insert_tecnique)==(?);
  List_Output(Machine(Tecniques),up_tecnique)==(?);
  List_Output(Machine(Tecniques),down_tecnique)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Tecniques),insert_tecnique)==(insert_tecnique(tt,grade));
  List_Header(Machine(Tecniques),up_tecnique)==(up_tecnique(tt));
  List_Header(Machine(Tecniques),down_tecnique)==(down_tecnique(tt))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Tecniques),insert_tecnique)==(tt: TECNIQUES & tt/:t_whites & tt/:t_colours & tt/:t_blacks & tt/:t_masters & grade: 1..4);
  List_Precondition(Machine(Tecniques),up_tecnique)==(tt: TECNIQUES & tt: t_whites\/t_colours\/t_blacks);
  List_Precondition(Machine(Tecniques),down_tecnique)==(tt: TECNIQUES & tt: t_colours\/t_blacks\/t_masters)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Tecniques),down_tecnique)==(tt: TECNIQUES & tt: t_colours\/t_blacks\/t_masters | tt: t_colours ==> t_colours,t_whites:=t_colours-{tt},t_whites\/{tt} [] not(tt: t_colours) ==> (tt: t_blacks ==> t_blacks,t_colours:=t_blacks-{tt},t_colours\/{tt} [] not(tt: t_blacks) ==> (tt: t_masters ==> t_masters,t_blacks:=t_masters-{tt},t_blacks\/{tt} [] not(tt: t_masters) ==> skip)));
  Expanded_List_Substitution(Machine(Tecniques),up_tecnique)==(tt: TECNIQUES & tt: t_whites\/t_colours\/t_blacks | tt: t_whites ==> t_whites,t_colours:=t_whites-{tt},t_colours\/{tt} [] not(tt: t_whites) ==> (tt: t_colours ==> t_colours,t_blacks:=t_colours-{tt},t_blacks\/{tt} [] not(tt: t_colours) ==> (tt: t_blacks ==> t_blacks,t_masters:=t_blacks-{tt},t_masters\/{tt} [] not(tt: t_blacks) ==> skip)));
  Expanded_List_Substitution(Machine(Tecniques),insert_tecnique)==(tt: TECNIQUES & tt/:t_whites & tt/:t_colours & tt/:t_blacks & tt/:t_masters & grade: 1..4 | grade = 1 ==> t_whites:=t_whites\/{tt} [] not(grade = 1) ==> (grade = 2 ==> t_colours:=t_colours\/{tt} [] not(grade = 2) ==> (grade = 3 ==> t_blacks:=t_blacks\/{tt} [] not(grade = 3) ==> (grade = 4 ==> t_masters:=t_masters\/{tt} [] not(grade = 4) ==> skip))));
  List_Substitution(Machine(Tecniques),insert_tecnique)==(IF grade = 1 THEN t_whites:=t_whites\/{tt} ELSE IF grade = 2 THEN t_colours:=t_colours\/{tt} ELSE IF grade = 3 THEN t_blacks:=t_blacks\/{tt} ELSE IF grade = 4 THEN t_masters:=t_masters\/{tt} END END END END);
  List_Substitution(Machine(Tecniques),up_tecnique)==(IF tt: t_whites THEN t_whites:=t_whites-{tt} || t_colours:=t_colours\/{tt} ELSE IF tt: t_colours THEN t_colours:=t_colours-{tt} || t_blacks:=t_blacks\/{tt} ELSE IF tt: t_blacks THEN t_blacks:=t_blacks-{tt} || t_masters:=t_masters\/{tt} END END END);
  List_Substitution(Machine(Tecniques),down_tecnique)==(IF tt: t_colours THEN t_colours:=t_colours-{tt} || t_whites:=t_whites\/{tt} ELSE IF tt: t_blacks THEN t_blacks:=t_blacks-{tt} || t_colours:=t_colours\/{tt} ELSE IF tt: t_masters THEN t_masters:=t_masters-{tt} || t_blacks:=t_blacks\/{tt} END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Tecniques))==(?);
  Inherited_List_Constants(Machine(Tecniques))==(?);
  List_Constants(Machine(Tecniques))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Tecniques),TECNIQUES)==(?);
  Context_List_Enumerated(Machine(Tecniques))==(?);
  Context_List_Defered(Machine(Tecniques))==(?);
  Context_List_Sets(Machine(Tecniques))==(?);
  List_Valuable_Sets(Machine(Tecniques))==(TECNIQUES);
  Inherited_List_Enumerated(Machine(Tecniques))==(?);
  Inherited_List_Defered(Machine(Tecniques))==(?);
  Inherited_List_Sets(Machine(Tecniques))==(?);
  List_Enumerated(Machine(Tecniques))==(?);
  List_Defered(Machine(Tecniques))==(TECNIQUES);
  List_Sets(Machine(Tecniques))==(TECNIQUES)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Tecniques))==(?);
  Expanded_List_HiddenConstants(Machine(Tecniques))==(?);
  List_HiddenConstants(Machine(Tecniques))==(?);
  External_List_HiddenConstants(Machine(Tecniques))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Tecniques))==(btrue);
  Context_List_Properties(Machine(Tecniques))==(btrue);
  Inherited_List_Properties(Machine(Tecniques))==(btrue);
  List_Properties(Machine(Tecniques))==(TECNIQUES: FIN(TECNIQUES) & card(TECNIQUES) = 100 & TECNIQUES: FIN(INTEGER) & not(TECNIQUES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Tecniques),insert_tecnique)==(?);
  List_ANY_Var(Machine(Tecniques),up_tecnique)==(?);
  List_ANY_Var(Machine(Tecniques),down_tecnique)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Tecniques)) == (TECNIQUES | ? | t_masters,t_blacks,t_colours,t_whites | ? | insert_tecnique,up_tecnique,down_tecnique | ? | ? | ? | Tecniques);
  List_Of_HiddenCst_Ids(Machine(Tecniques)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Tecniques)) == (?);
  List_Of_VisibleVar_Ids(Machine(Tecniques)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Tecniques)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Tecniques)) == (Type(TECNIQUES) == Cst(SetOf(atype(TECNIQUES,"[TECNIQUES","]TECNIQUES"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Tecniques)) == (Type(t_masters) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(t_blacks) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(t_colours) == Mvl(SetOf(atype(TECNIQUES,?,?)));Type(t_whites) == Mvl(SetOf(atype(TECNIQUES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Tecniques)) == (Type(down_tecnique) == Cst(No_type,atype(TECNIQUES,?,?));Type(up_tecnique) == Cst(No_type,atype(TECNIQUES,?,?));Type(insert_tecnique) == Cst(No_type,atype(TECNIQUES,?,?)*btype(INTEGER,?,?)))
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
