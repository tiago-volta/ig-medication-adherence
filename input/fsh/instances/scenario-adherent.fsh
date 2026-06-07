// Scenario 1: fully adherent patient (Maria Silva)

Instance: patient-adherent-maria
InstanceOf: PatientAdherence
Usage: #example
Title: "Maria Silva — adherent patient"
Description: "Patient who takes all prescribed doses in the observation period."
* identifier[0].system = "https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id"
* identifier[0].value = "patient-adherent-maria"
* active = true
* name[0].family = "Silva"
* name[0].given[0] = "Maria"
* gender = #female
* birthDate = "1965-03-12"

Instance: rx-metformin-maria
InstanceOf: MedicationRequestAdherence
Usage: #example
Title: "Metformin prescription for Maria Silva"
* status = #active
* intent = #order
* medicationCodeableConcept = AdherenceMedicationCS#metformin
* subject = Reference(patient-adherent-maria)
* authoredOn = "2025-05-01"
* requester = Reference(practitioner-example)
* reasonCode[0].text = "Type 2 diabetes mellitus"
* dosageInstruction[0].text = "Take 500 mg by mouth twice daily with meals"
* dosageInstruction[0].timing.repeat.frequency = 2
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate[0].doseQuantity = 500 'mg'
* dispenseRequest.quantity = 60 '{tablet}'
* dispenseRequest.expectedSupplyDuration = 30 'd'

Instance: admin-maria-am
InstanceOf: MedicationAdministrationAdherence
Usage: #example
Title: "Maria Silva — morning dose taken"
* status = #completed
* medicationCodeableConcept = AdherenceMedicationCS#metformin
* subject = Reference(patient-adherent-maria)
* effectiveDateTime = "2025-06-01T08:00:00+01:00"
* performer[0].actor = Reference(patient-adherent-maria)
* dosage.text = "500 mg with breakfast"

Instance: admin-maria-pm
InstanceOf: MedicationAdministrationAdherence
Usage: #example
Title: "Maria Silva — evening dose taken"
* status = #completed
* medicationCodeableConcept = AdherenceMedicationCS#metformin
* subject = Reference(patient-adherent-maria)
* effectiveDateTime = "2025-06-01T20:00:00+01:00"
* performer[0].actor = Reference(patient-adherent-maria)
* dosage.text = "500 mg with dinner"

Instance: obs-adherence-maria
InstanceOf: AdherenceObservation
Usage: #example
Title: "Maria Silva — 100% adherence rate"
* status = #final
* code = AdherenceObservationCodeCS#adherence-rate
* subject = Reference(patient-adherent-maria)
* effectivePeriod.start = "2025-06-01"
* effectivePeriod.end = "2025-06-07"
* valueQuantity = 100 '%'
* focus[0] = Reference(rx-metformin-maria)
