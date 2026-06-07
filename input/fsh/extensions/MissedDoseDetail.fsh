Extension: MissedDoseDetail
Id: missed-dose-detail
Title: "Missed Dose Detail"
Description: "Optional free-text detail when a dose was not taken, complementing statusReason."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/missed-dose-detail"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "MedicationAdministration"
* value[x] only string
