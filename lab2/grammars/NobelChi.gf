concrete NobelChi of Nobel = LabelsChi ** open
  SyntaxChi,
  ParadigmsChi,
  SymbolicChi
in {

lincat
  Sentence = S ;
  Name = NP ;
  Date = Adv ;

lin
  BornSentence name country date =
    mkS (mkCl name (mkVP (mkVP (mkV2 (mkV "出生于")) country) date)) ;

  AwardSentence name award date =
    mkS (mkCl name (mkVP (mkVP (mkV2 (mkV "获得")) award) date)) ;
      
  DiedSentence name date =
    mkS (mkCl name (mkVP (mkVP (mkV "去世")) date)) ;


  StringName s = symb s ;
  
  YearDate i = inAdv (symb (i.s ++ "年")) ;

  he_Name = he_NP ;
  she_Name = she_NP ;
  they_Name = they_NP ;

oper
  inAdv : NP -> Adv = \np -> SyntaxChi.mkAdv (mkPrep "在") np ;

}