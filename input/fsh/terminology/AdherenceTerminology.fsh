CodeSystem: AdherenceReasonCS
Id: adherence-reason
Title: "Non-Adherence Reason Codes (Illustrative)"
Description: "Local code system for common reasons of medication non-adherence. For learning and demonstration only; not a clinical standard."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-reason"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #forgot "Forgot dose" "Patient forgot to take the medication at the scheduled time."
* #adverse-effects "Adverse effects" "Patient stopped or skipped doses due to side effects."
* #cost "Cost / affordability" "Patient skipped doses due to medication cost."
* #felt-better "Felt better" "Patient stopped because symptoms improved."
* #complex-regimen "Complex regimen" "Regimen complexity led to missed doses."
* #other "Other reason" "Other or unspecified non-adherence reason."

ValueSet: AdherenceReasonVS
Id: adherence-reason
Title: "Non-Adherence Reasons"
Description: "Value set of illustrative reasons for missed or refused medication doses."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-reason"
* ^status = #draft
* include codes from system AdherenceReasonCS

CodeSystem: AdherenceObservationCodeCS
Id: adherence-observation-code
Title: "Adherence Observation Codes (Illustrative)"
Description: "Local code system for adherence-related observations. For learning and demonstration only."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-observation-code"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #adherence-rate "Medication adherence rate" "Percentage of prescribed doses taken in a measurement period."
* #adherence-assessment "Adherence assessment" "Coded summary of adherence status or primary non-adherence reason."

ValueSet: AdherenceObservationCodeVS
Id: adherence-observation-code
Title: "Adherence Observation Codes"
Description: "Codes for observations that measure or assess medication adherence."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-observation-code"
* ^status = #draft
* include codes from system AdherenceObservationCodeCS

CodeSystem: AdherenceMedicationCS
Id: adherence-medication
Title: "Example Medication Codes (Illustrative)"
Description: "Local medication codes used in example instances. Not mapped to SNOMED or ATC."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #metformin "Metformin 500 mg tablet" "Example oral antidiabetic for adherence scenarios."
* #lisinopril "Lisinopril 10 mg tablet" "Example antihypertensive for adherence scenarios."
* #ibuprofen "Ibuprofen 400 mg tablet" "Example NSAID for adverse-event adherence scenarios."

ValueSet: AdherenceMedicationVS
Id: adherence-medication
Title: "Example Medications"
Description: "Illustrative medications referenced in the example instances."
* ^url = "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-medication"
* ^status = #draft
* include codes from system AdherenceMedicationCS
