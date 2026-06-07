Profile: AdherenceObservation
Parent: Observation
Id: adherence-observation
Title: "Observation of Medication Adherence"
Description: "Profile of Observation to capture adherence measurements (percentage of doses taken) or coded adherence assessments (e.g. non-adherence reason summaries)."

* status 1..1
* code 1..1
* code from AdherenceObservationCodeVS (required)
* subject 1..1
* effective[x] 1..1
* value[x] only Quantity or CodeableConcept
* focus 0..*
