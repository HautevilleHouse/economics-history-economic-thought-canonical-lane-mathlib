import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure AggregateDemandPackage where
  consumptionFunction : Prop
  investmentFunction : Prop
  governmentSpending : Prop
  netExports : Prop
  equilibriumCondition : Prop

structure ProductionPackage where
  productionFunction : Prop
  factorInputs : Prop
  technologicalProgress : Prop
  returnsToScale : Prop

def AggregateDemandClosed (A : AggregateDemandPackage) : Prop :=
  A.consumptionFunction ∧ A.investmentFunction ∧ A.governmentSpending ∧
  A.netExports ∧ A.equilibriumCondition

def ProductionClosed (P : ProductionPackage) : Prop :=
  P.productionFunction ∧ P.factorInputs ∧ P.technologicalProgress ∧ P.returnsToScale

structure LabourMarketPackage where
  labourSupply : Prop
  labourDemand : Prop
  wageFlexibility : Prop
  unemployment : Prop

def LabourMarketClosed (L : LabourMarketPackage) : Prop :=
  L.labourSupply ∧ L.labourDemand ∧ L.wageFlexibility ∧ L.unemployment

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
