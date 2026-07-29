import EconomicsHistoryEconomicThoughtCanonicalLaneLean.UtilityTheory

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure GrowthModelPackage where
  capitalStock : Type u
  laborSupply : Type u
  productionFunction : capitalStock → laborSupply → ℝ
  savingRate : ℝ
  depreciationRate : ℝ
  steadyStateExists : Prop
  convergenceToSteadyState : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateExistsClosed : G.steadyStateExists
  convergenceToSteadyStateClosed : G.convergenceToSteadyState

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyStateExists ∧ G.convergenceToSteadyState

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.steadyStateExistsClosed E.convergenceToSteadyStateClosed

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
