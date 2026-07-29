import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure ParetoOptimality where
  allocation : Type u
  agents : List agent
  utilities : agent → ℝ
  paretoImprovementPossible : Prop

def ParetoOptimal (P : ParetoOptimality) : Prop := P.paretoImprovementPossible = False

structure SocialWelfareFunction where
  domain : Set (agent → ℝ)
  socialWelfare : (agent → ℝ) → ℝ
  paretoPrinciple : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

def ArrowImpossibilityTheorem (S : SocialWelfareFunction) : Prop :=
  ¬ (S.paretoPrinciple ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship)

structure CompensationPrinciple where
  potentialCompensation : Prop
  kaldorHicksEfficiency : Prop
  scitovskyParadox : Prop

def CompensationClosed (C : CompensationPrinciple) : Prop :=
  C.kaldorHicksEfficiency ∧ ¬ C.scitovskyParadox

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
