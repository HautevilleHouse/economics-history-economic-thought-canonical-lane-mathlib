import EconomicsHistoryEconomicThoughtCanonicalLaneLean.AssetPricing

namespace HautevilleHouse
namespace EconomicsHistoryEconomicThoughtCanonicalLaneLean

structure HistoricalThoughtPackage where
  school : String
  keyAuthors : List String
  coreTenet : String
  historicalInfluence : Prop
  modernRelevance : Prop

structure HistoricalThoughtEvidence (H : HistoricalThoughtPackage) where
  historicalInfluenceClosed : H.historicalInfluence
  modernRelevanceClosed : H.modernRelevance

def HistoricalThoughtClosed (H : HistoricalThoughtPackage) : Prop :=
  H.historicalInfluence ∧ H.modernRelevance

theorem historical_thought_closed_from_evidence (H : HistoricalThoughtPackage) (E : HistoricalThoughtEvidence H) :
    HistoricalThoughtClosed H := by
  exact And.intro E.historicalInfluenceClosed E.modernRelevanceClosed

end EconomicsHistoryEconomicThoughtCanonicalLaneLean
end HautevilleHouse
