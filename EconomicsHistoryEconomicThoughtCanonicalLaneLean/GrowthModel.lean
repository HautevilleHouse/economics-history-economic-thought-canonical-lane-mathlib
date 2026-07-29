import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure SolowGrowthPackage where
  capitalAccumulation : Prop
  labourGrowth : Prop
  technologicalProgress : Prop
  savingRate : ℝ
  depreciationRate : ℝ

def SteadyStateCondition (S : SolowGrowthPackage) : Prop :=
  S.savingRate * (capitalOutputRatio) = S.depreciationRate

structure EndogenousGrowthPackage where
  humanCapital : Prop
  researchAndDevelopment : Prop
  knowledgeSpillovers : Prop
  constantReturns : Prop

def GrowthModelClosed (G : SolowGrowthPackage) : Prop :=
  G.capitalAccumulation ∧ G.labourGrowth ∧ G.technologicalProgress

theorem solow_growth_closed (G : SolowGrowthPackage) :
    GrowthModelClosed G := by
  exact And.intro G.capitalAccumulation (And.intro G.labourGrowth G.technologicalProgress)

structure RamseyCassKoopmansPackage where
  householdOptimization : Prop
  firmOptimization : Prop
  marketEquilibrium : Prop
  socialPlannerEquivalent : Prop

def RamseyCassKoopmansClosed (R : RamseyCassKoopmansPackage) : Prop :=
  R.householdOptimization ∧ R.firmOptimization ∧ R.marketEquilibrium ∧
  R.socialPlannerEquivalent

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
