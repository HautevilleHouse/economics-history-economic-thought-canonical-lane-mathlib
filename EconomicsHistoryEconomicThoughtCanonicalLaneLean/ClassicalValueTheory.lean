import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure ClassicalValueTheoryPackage where
  laborTheoryOfValue : Prop
  surplusExtraction : Prop
  reproductionScheme : Prop
  transformationProblem : Prop
  tendencyForRateToFall : Prop

structure ClassicalValueTheoryEvidence (C : ClassicalValueTheoryPackage) where
  laborTheoryOfValueClosed : C.laborTheoryOfValue
  surplusExtractionClosed : C.surplusExtraction
  reproductionSchemeClosed : C.reproductionScheme
  transformationProblemClosed : C.transformationProblem
  tendencyForRateToFallClosed : C.tendencyForRateToFall

def ClassicalValueTheoryClosed (C : ClassicalValueTheoryPackage) : Prop :=
  C.laborTheoryOfValue ∧ C.surplusExtraction ∧ C.reproductionScheme ∧ C.transformationProblem ∧ C.tendencyForRateToFall

theorem classical_value_theory_closed_from_evidence
    (C : ClassicalValueTheoryPackage) (Ev : ClassicalValueTheoryEvidence C) :
    ClassicalValueTheoryClosed C := by
  exact And.intro Ev.laborTheoryOfValueClosed (And.intro Ev.surplusExtractionClosed
    (And.intro Ev.reproductionSchemeClosed (And.intro Ev.transformationProblemClosed Ev.tendencyForRateToFallClosed)))

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse