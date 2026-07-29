import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure UtilityPreferencePackage (Goods : Type u) where
  preferenceRelation : Goods → Goods → Prop
  completeness : ∀ x y : Goods, preferenceRelation x y ∨ preferenceRelation y x
  transitivity : ∀ x y z : Goods, preferenceRelation x y → preferenceRelation y z → preferenceRelation x z
  continuity : Prop

structure UtilityPreferenceEvidence {Goods : Type u} (U : UtilityPreferencePackage Goods) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity

def UtilityPreferenceClosed {Goods : Type u} (U : UtilityPreferencePackage Goods) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity

theorem utility_preference_closed_from_evidence
    {Goods : Type u} (U : UtilityPreferencePackage Goods) (E : UtilityPreferenceEvidence U) :
    UtilityPreferenceClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed E.continuityClosed)

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse