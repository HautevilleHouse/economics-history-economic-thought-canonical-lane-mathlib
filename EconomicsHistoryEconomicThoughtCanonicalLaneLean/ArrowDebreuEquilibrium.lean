import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure CommoditySpace where
  commodities : Type u
  priceSystem : commodities → ℝ
  endowments : Type v
  preferences : Type w

structure Consumer where
  consumptionSet : Set (commodities → ℝ)
  preferenceRelation : commodities → commodities → Prop
  initialEndowment : commodities → ℝ

def UtilityMaximization (c : Consumer) : Prop :=
  ∀ x y : commodities, c.preferenceRelation x y → x = y

structure Firm where
  productionSet : Set (commodities → ℝ)
  profitFunction : (commodities → ℝ) → ℝ

def ProfitMaximization (f : Firm) : Prop :=
  ∀ p : commodities → ℝ, f.profitFunction p ∈ f.productionSet

structure ArrowDebreuEquilibrium where
  priceVector : commodities → ℝ
  consumers : List Consumer
  firms : List Firm
  marketClearing : Prop
  consumerOptimality : Prop
  firmOptimality : Prop

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibrium) : Prop :=
  E.marketClearing ∧ E.consumerOptimality ∧ E.firmOptimality

theorem arrow_debreu_equilibrium_closed (E : ArrowDebreuEquilibrium) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro E.marketClearing (And.intro E.consumerOptimality E.firmOptimality)

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
