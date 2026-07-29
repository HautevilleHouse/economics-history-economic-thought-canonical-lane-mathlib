import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure UtilityFunction (X : Type u) where
  domain : X → Prop
  utility : X → ℝ
  monotonicity : ∀ x y : X, domain x → domain y → (utility x ≤ utility y → Prop)
  completeness : ∀ x y : X, domain x → domain y → (utility x ≤ utility y) ∨ (utility y ≤ utility x)

structure PreferenceRelation (X : Type u) where
  atLeastAsGood : X → X → Prop
  completeness : ∀ x y : X, atLeastAsGood x y ∨ atLeastAsGood y x
  transitivity : ∀ x y z : X, atLeastAsGood x y → atLeastAsGood y z → atLeastAsGood x z

def utilityRepresentsPreference {X : Type u} (u : UtilityFunction X) (pref : PreferenceRelation X) : Prop :=
  ∀ x y : X, u.domain x → u.domain y → (u.utility x ≤ u.utility y ↔ pref.atLeastAsGood x y)

structure PreferenceRepresentationEvidence {X : Type u} (pref : PreferenceRelation X) where
  utilityExists : ∃ (u : UtilityFunction X), utilityRepresentsPreference u pref
  domainNonempty : ∃ x : X, True

def PreferenceRepresentationClosed {X : Type u} (pref : PreferenceRelation X) : Prop :=
  ∃ (u : UtilityFunction X), utilityRepresentsPreference u pref

theorem preference_representation_closed_from_evidence {X : Type u} (pref : PreferenceRelation X)
    (ev : PreferenceRepresentationEvidence pref) : PreferenceRepresentationClosed pref :=
  ev.utilityExists

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
