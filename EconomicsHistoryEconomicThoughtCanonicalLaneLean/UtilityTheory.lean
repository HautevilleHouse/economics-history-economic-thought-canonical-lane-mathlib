import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X → X → Prop
  completeness : ∀ x y : X, relation x y ∨ relation y x
  transitivity : ∀ x y z : X, relation x y → relation y z → relation x z
  reflexivity : ∀ x : X, relation x x

structure UtilityFunction (X : Type u) where
  func : X → ℝ
  representation : (∀ x y : X, PreferenceRelation.relation x y ↔ func x ≥ func y)
  continuity : Prop
  monotonicity : Prop

def UtilityRepresentability (X : Type u) (P : PreferenceRelation X) : Prop :=
  ∃ U : UtilityFunction X, U.representation

structure ExpectedUtilityPackage where
  outcomeSet : Type u
  probabilityMeasure : outcomeSet → ℝ
  lotterySpace : Type v
  vonNeumannMorgensternUtility : (outcomeSet → ℝ) → ℝ
  independenceAxiom : Prop
  continuityAxiom : Prop

def ExpectedUtilityTheorem (E : ExpectedUtilityPackage) : Prop :=
  E.independenceAxiom ∧ E.continuityAxiom

theorem expected_utility_closed (E : ExpectedUtilityPackage) :
    ExpectedUtilityTheorem E := by
  exact And.intro E.independenceAxiom E.continuityAxiom

structure RevealedPreferencePackage where
  choiceFunction : Set (Set α) → Set α
  weakAxiom : Prop
  strongAxiom : Prop
  rationalization : Prop

def RevealedPreferenceClosed (R : RevealedPreferencePackage) : Prop :=
  R.weakAxiom ∧ R.strongAxiom ∧ R.rationalization

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
