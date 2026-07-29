import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure MarginalRevolutionPackage where
  marginalUtility : Prop
  diminishingReturns : Prop
  subjectiveValue : Prop
  marginalProductivity : Prop
  generalEquilibrium : Prop

structure MarginalRevolutionEvidence (M : MarginalRevolutionPackage) where
  marginalUtilityClosed : M.marginalUtility
  diminishingReturnsClosed : M.diminishingReturns
  subjectiveValueClosed : M.subjectiveValue
  marginalProductivityClosed : M.marginalProductivity
  generalEquilibriumClosed : M.generalEquilibrium

def MarginalRevolutionClosed (M : MarginalRevolutionPackage) : Prop :=
  M.marginalUtility ∧ M.diminishingReturns ∧ M.subjectiveValue ∧ M.marginalProductivity ∧ M.generalEquilibrium

theorem marginal_revolution_closed_from_evidence
    (M : MarginalRevolutionPackage) (Ev : MarginalRevolutionEvidence M) :
    MarginalRevolutionClosed M := by
  exact And.intro Ev.marginalUtilityClosed (And.intro Ev.diminishingReturnsClosed
    (And.intro Ev.subjectiveValueClosed (And.intro Ev.marginalProductivityClosed Ev.generalEquilibriumClosed)))

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse