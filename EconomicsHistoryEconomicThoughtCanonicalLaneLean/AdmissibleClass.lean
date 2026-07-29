import EconomicsHistoryEconomicThoughtCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure EconomicsAdmittedObject where
  concept : String
  theory : String
  author : String
  conclusion : Prop

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EconomicsWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.conclusion

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
