import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure SolowGrowthModel where
  capitalStock : ℕ → ℝ
  laborForce : ℕ → ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  productionFunction : ℝ → ℝ → ℝ
  initialCapital : ℝ
  initialLabor : ℝ

def solowEvolution (m : SolowGrowthModel) (t : ℕ) : ℝ × ℝ :=
  let k := m.capitalStock t
  let l := m.laborForce t
  let output := m.productionFunction k l
  let investment := m.savingsRate * output
  let nextCapital := investment + (1 - m.depreciationRate) * k
  let nextLabor := (1 + 0.02) * l
  (nextCapital, nextLabor)

structure GrowthModelEvidence (m : SolowGrowthModel) where
  convergenceToSteadyState : ∃ (kStar : ℝ), Filter.Tendsto (λ t : ℕ => m.capitalStock t) Filter.atTop (𝓝 kStar)
  steadyStateCapital : ℝ
  steadyStateCapitalIsFixedPoint : m.productionFunction steadyStateCapital m.initialLabor * m.savingsRate = m.depreciationRate * steadyStateCapital

def GrowthModelClosed (m : SolowGrowthModel) : Prop :=
  ∃ (kStar : ℝ), Filter.Tendsto (λ t : ℕ => m.capitalStock t) Filter.atTop (𝓝 kStar)

theorem growth_model_closed_from_evidence (m : SolowGrowthModel)
    (ev : GrowthModelEvidence m) : GrowthModelClosed m :=
  ev.convergenceToSteadyState

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
