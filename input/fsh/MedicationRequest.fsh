Profile: MedicationRequestAdherence
Parent: MedicationRequest
Id: medication-request-adherence
Title: "Medication Request"
Description: "A profile of MedicationRequest focused on prescribing medications to be tracked for adherence."

* status 1..1
* intent = #order
* medication[x] 1..1
* subject 1..1
* authoredOn 1..1
* requester 1..1
