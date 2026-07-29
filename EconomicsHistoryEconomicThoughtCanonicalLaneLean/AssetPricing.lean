import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure StochasticDiscountFactor where
  statePrices : Type u
  discountFactor : ℝ
  riskFreeRate : ℝ
  marketPrices : Type v

structure ConsumptionBasedCAPM where
  representativeAgentUtility : (ℝ → ℝ) → ℝ
  consumptionGrowth : ℝ[ℕ]  -- placeholder for a sequence
  assetReturns : ℝ[ℕ]
  eulerEquation : Prop
  covarianceWithConsumption : Prop

def ConsumptionCAPMClosed (C : ConsumptionBasedCAPM) : Prop :=
  C.eulerEquation ∧ C.covarianceWithConsumption

structure ArbitrageFreePricing where
  payoffSpace : Type u
  priceFunctional : (payoffSpace → ℝ) → ℝ
  lawOfOnePrice : Prop
  noArbitrage : Prop
  riskNeutralProbability : Prop

def ArbitrageFreeClosed (A : ArbitrageFreePricing) : Prop :=
  A.lawOfOnePrice ∧ A.noArbitrage ∧ A.riskNeutralProbability

theorem arbitrage_free_pricing_closed (A : ArbitrageFreePricing) :
    ArbitrageFreeClosed A := by
  exact And.intro A.lawOfOnePrice (And.intro A.noArbitrage A.riskNeutralProbability)

structure EfficientMarketHypothesis where
  stockPrices : Type u
  informationSet : Type v
  martingaleProperty : Prop
  randomWalkHypothesis : Prop
  predictabilityTest : Prop

def EfficientMarketClosed (E : EfficientMarketHypothesis) : Prop :=
  E.martingaleProperty ∧ E.randomWalkHypothesis ∧ E.predictabilityTest

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
