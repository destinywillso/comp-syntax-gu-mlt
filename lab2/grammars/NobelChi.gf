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
    mkS pastTense (mkCl name (mkVP (mkVP born_VP (inAdv country)) date)) ;
    
  AwardSentence name award date =
    mkS pastTense (mkCl name (mkVP (mkVP (mkV2 (mkV "获得")) award) date)) ;
      
  DiedSentence name date =
    mkS pastTense (mkCl name (mkVP die_VP date)) ;

  StringName s = symb s ;
  
  YearDate i = inAdv <symb i : NP> ;

  he_Name = he_NP ;
  she_Name = she_NP ;
  they_Name = they_NP ;

oper
  inAdv : NP -> Adv = \np -> SyntaxChi.mkAdv in_Prep np ;
  born_VP = mkVP (mkA "出生") ;
  die_VP = mkVP (mkV "死去") ;

}