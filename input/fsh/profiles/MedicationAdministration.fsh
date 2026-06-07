Profile: MedicationAdministrationAdherence
Parent: MedicationAdministration
Id: medication-administration-adherence
Title: "Medication Administration for Adherence Tracking"
Description: "Profile of MedicationAdministration for recording whether a prescribed dose was taken, skipped, or refused. Use statusReason (FHIR R4) when status is not-done."

* status 1..1
* medication[x] 1..1
* subject 1..1
* effective[x] 1..1
* dosage 0..1
* dosage.text 0..1
* statusReason 0..1
* statusReason from AdherenceReasonVS (preferred)

* extension contains MissedDoseDetail named missedDoseDetail 0..1
