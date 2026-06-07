Profile: PatientAdherence
Parent: Patient
Id: patient-adherence
Title: "Patient for Adherence Tracking"
Description: "Profile of Patient for medication adherence scenarios. Requires core demographics used in the example instances."

* identifier 1..* MS
* active 1..1 MS
* name 1..* MS
* telecom 0..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* address 0..* MS
