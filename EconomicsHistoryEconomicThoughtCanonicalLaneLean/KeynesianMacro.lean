import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure KeynesianMacroPackage where
  effectiveDemand : Prop
  liquidityPreference : Prop
  fiscalMultiplier : Prop
  wageRigidity : Prop

structure KeynesianMacroEvidence (K : KeynesianMacroPackage) where
  effectiveDemandClosed : K.effectiveDemand
  liquidityPreferenceClosed : K.liquidityPreference
  fiscalMultiplierClosed : K.fiscalMultiplier
  wageRigidityClosed : K.wageRigidity

def KeynesianMacroClosed (K : KeynesianMacroPackage) : Prop :=
  K.effectiveDemand ∧ K.liquidityPreference ∧ K.fiscalMultiplier ∧ K.wageRigidity

theorem keynesian_macro_closed_from_evidence
    (K : KeynesianMacroPackage) (E : KeynesianMacroEvidence K) :
    KeynesianMacroClosed K := by
  exact And.intro E.effectiveDemandClosed
    (And.intro E.liquidityPreferenceClosed
      (And.intro E.fiscalMultiplierClosed E.wageRigidityClosed))

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
