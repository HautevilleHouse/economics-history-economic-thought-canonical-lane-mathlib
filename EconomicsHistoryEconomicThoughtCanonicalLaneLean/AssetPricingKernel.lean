import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure AssetMarket (Ω : Type u) [MeasureTheory.MeasureSpace Ω] where
  payoff : Ω → ℝ
  price : ℝ
  stochasticDiscountFactor : Ω → ℝ
  discountFactorIsPositive : ∀ ω, stochasticDiscountFactor ω > 0
  discountFactorIntegrable : Integrable stochasticDiscountFactor MeasureTheory.volume

def basicPricingEquation (m : AssetMarket Ω) : Prop :=
  m.price = ∫ ω, m.payoff ω * m.stochasticDiscountFactor ω ∂ MeasureTheory.volume

structure PricingKernelEvidence (Ω : Type u) [MeasureTheory.MeasureSpace Ω] (m : AssetMarket Ω) where
  pricingEquationHolds : basicPricingEquation m
  noArbitrage : ∀ portfolio : Ω → ℝ, (∫ ω, portfolio ω * m.stochasticDiscountFactor ω ∂ MeasureTheory.volume) = 0 → 
    (∀ ω, portfolio ω ≥ 0) → (∀ ω, portfolio ω = 0)
  marketComplete : ∀ claim : Ω → ℝ, Integrable claim MeasureTheory.volume → 
    ∃ replicatingPortfolio : Ω → ℝ, Integrable replicatingPortfolio MeasureTheory.volume ∧ 
    (∀ ω, replicatingPortfolio ω = claim ω)

def AssetPricingClosed (Ω : Type u) [MeasureTheory.MeasureSpace Ω] (m : AssetMarket Ω) : Prop :=
  basicPricingEquation m ∧ 
  ∀ portfolio : Ω → ℝ, (∫ ω, portfolio ω * m.stochasticDiscountFactor ω ∂ MeasureTheory.volume) = 0 → 
    (∀ ω, portfolio ω ≥ 0) → (∀ ω, portfolio ω = 0)

theorem asset_pricing_closed_from_evidence (Ω : Type u) [MeasureTheory.MeasureSpace Ω] (m : AssetMarket Ω)
    (ev : PricingKernelEvidence Ω m) : AssetPricingClosed Ω m :=
  And.intro ev.pricingEquationHolds ev.noArbitrage

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
