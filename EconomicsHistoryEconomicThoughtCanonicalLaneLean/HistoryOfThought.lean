import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure ClassicalPoliticalEconomyPackage where
  laborTheoryOfValue : Prop
  distributionTheory : Prop
  stationaryState : Prop

structure ClassicalPoliticalEconomyEvidence (C : ClassicalPoliticalEconomyPackage) where
  laborTheoryOfValueClosed : C.laborTheoryOfValue
  distributionTheoryClosed : C.distributionTheory
  stationaryStateClosed : C.stationaryState

def ClassicalPoliticalEconomyClosed (C : ClassicalPoliticalEconomyPackage) : Prop :=
  C.laborTheoryOfValue ∧ C.distributionTheory ∧ C.stationaryState

theorem classical_political_economy_closed_from_evidence
    (C : ClassicalPoliticalEconomyPackage) (E : ClassicalPoliticalEconomyEvidence C) :
    ClassicalPoliticalEconomyClosed C := by
  exact And.intro E.laborTheoryOfValueClosed (And.intro E.distributionTheoryClosed E.stationaryStateClosed)

structure MarginalRevolutionPackage where
  marginalUtility : Prop
  subjectiveValue : Prop
  generalEquilibriumSketch : Prop

structure MarginalRevolutionEvidence (M : MarginalRevolutionPackage) where
  marginalUtilityClosed : M.marginalUtility
  subjectiveValueClosed : M.subjectiveValue
  generalEquilibriumSketchClosed : M.generalEquilibriumSketch

def MarginalRevolutionClosed (M : MarginalRevolutionPackage) : Prop :=
  M.marginalUtility ∧ M.subjectiveValue ∧ M.generalEquilibriumSketch

theorem marginal_revolution_closed_from_evidence
    (M : MarginalRevolutionPackage) (E : MarginalRevolutionEvidence M) :
    MarginalRevolutionClosed M := by
  exact And.intro E.marginalUtilityClosed (And.intro E.subjectiveValueClosed E.generalEquilibriumSketchClosed)

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
