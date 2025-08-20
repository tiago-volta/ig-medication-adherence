Profile: AdherenceObservation
Parent: Observation
Id: adherence-observation
Title: "Observation of Medication Adherence"
Description: "A profile of Observation to capture adherence-related measurements, such as percentage of doses taken or self-reported adherence."

* status = #final
* code = 1..1
* subject 1..1
* effective[x] 1..1
* value[x] only Quantity or CodeableConcept
