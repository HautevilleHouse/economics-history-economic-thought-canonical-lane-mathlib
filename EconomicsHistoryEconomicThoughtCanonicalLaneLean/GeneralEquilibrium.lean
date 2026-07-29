import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  endowments : commoditySpace → ℝ
  preferences : commoditySpace → commoditySpace → Prop
  utilityMaximization : Prop
  profitMaximization : Prop
  marketClearing : Prop

structure ArrowDebreuEquilibriumEvidence (G : ArrowDebreuEquilibriumPackage) where
  utilityMaximizationClosed : G.utilityMaximization
  profitMaximizationClosed : G.profitMaximization
  marketClearingClosed : G.marketClearing

def ArrowDebreuEquilibriumClosed (G : ArrowDebreuEquilibriumPackage) : Prop :=
  G.utilityMaximization ∧ G.profitMaximization ∧ G.marketClearing

theorem arrow_debreu_equilibrium_closed_from_evidence
    (G : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence G) :
    ArrowDebreuEquilibriumClosed G := by
  exact And.intro E.utilityMaximizationClosed (And.intro E.profitMaximizationClosed E.marketClearingClosed)

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
