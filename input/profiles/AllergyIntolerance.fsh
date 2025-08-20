Profile: AllergyIntolerance
Parent: Allergy
Id: allergy-intolerance
Title: "Allergy Intolerance Profile"
Description: "Allergy intolerance profile for medication adherence tracking"

* implicitRules 0..1
* modifierExtension 0..*
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS

* code 1..1 MS

* patient 1..1 MS

* recorder 0..1 MS

* reaction 0..* MS
* reaction.manifestation 1..* MS
