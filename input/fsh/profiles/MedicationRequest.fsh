Profile: MedicationRequestAdherence
Parent: MedicationRequest
Id: medication-request-adherence
Title: "Medication Request for Adherence Tracking"
Description: "Profile of MedicationRequest for prescribing medications whose adherence will be monitored. Includes dosage instructions, dispense details, and clinical indication."

* status 1..1
* intent = #order
* medication[x] 1..1
* subject 1..1
* authoredOn 1..1
* requester 1..1
* reasonCode 0..*
* dosageInstruction 1..*
* dispenseRequest 0..1
