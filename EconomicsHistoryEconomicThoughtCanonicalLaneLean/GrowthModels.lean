import EconomicsHistoryEconomicThoughtCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure GrowthModelsPackage where
  productionFunction : Type u
  capitalAccumulation : Prop
  laborSupply : Prop
  steadyState : Prop
  convergence : Prop

def GrowthModelsClosed (pkg : GrowthModelsPackage) : Prop :=
  pkg.capitalAccumulation ∧ pkg.steadyState ∧ pkg.convergence

theorem growth_models_closed (pkg : GrowthModelsPackage) :
    GrowthModelsClosed pkg := by
  exact And.intro pkg.capitalAccumulation (And.intro pkg.steadyState pkg.convergence)

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse