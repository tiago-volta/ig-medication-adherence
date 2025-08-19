Profile: PatientAdherence
Parent: Patient
Id: patient-adherence
Title: "Patient for Medication Adherence IG"
Description: "Profile of Patient used in the Medication Adherence Implementation Guide."

* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1

* active 1..1 MS

* name 1..* MS
* name.family 1..1
* name.given 1..*

* telecom 0..* MS

* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)

* birthDate 1..1 MS

* address 0..*

* maritalStatus 0..1

* communication 0..*
* communication.language 1..1
* communication.preferred 0..1


