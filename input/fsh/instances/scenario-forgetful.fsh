// Scenario 2: patient with intermittent forgetfulness (Carlos Pereira)

Instance: patient-forgetful-carlos
InstanceOf: PatientAdherence
Usage: #example
Title: "Carlos Pereira — intermittent forgetfulness"
Description: "Patient who misses occasional doses due to forgetfulness."
* identifier[0].system = "https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id"
* identifier[0].value = "patient-forgetful-carlos"
* active = true
* name[0].family = "Pereira"
* name[0].given[0] = "Carlos"
* gender = #male
* birthDate = "1958-11-04"

Instance: rx-lisinopril-carlos
InstanceOf: MedicationRequestAdherence
Usage: #example
Title: "Lisinopril prescription for Carlos Pereira"
* status = #active
* intent = #order
* medicationCodeableConcept = AdherenceMedicationCS#lisinopril
* subject = Reference(patient-forgetful-carlos)
* authoredOn = "2025-04-15"
* requester = Reference(practitioner-example)
* reasonCode[0].text = "Essential hypertension"
* dosageInstruction[0].text = "Take 10 mg by mouth once daily in the morning"
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate[0].doseQuantity = 10 'mg'

Instance: admin-carlos-taken
InstanceOf: MedicationAdministrationAdherence
Usage: #example
Title: "Carlos Pereira — dose taken"
* status = #completed
* medicationCodeableConcept = AdherenceMedicationCS#lisinopril
* subject = Reference(patient-forgetful-carlos)
* effectiveDateTime = "2025-06-02T08:00:00+01:00"
* performer[0].actor = Reference(patient-forgetful-carlos)
* dosage.text = "10 mg in the morning"

Instance: admin-carlos-missed
InstanceOf: MedicationAdministrationAdherence
Usage: #example
Title: "Carlos Pereira — dose missed (forgot)"
* status = #not-done
* medicationCodeableConcept = AdherenceMedicationCS#lisinopril
* subject = Reference(patient-forgetful-carlos)
* effectiveDateTime = "2025-06-03T08:00:00+01:00"
* statusReason = AdherenceReasonCS#forgot
* extension[missedDoseDetail].valueString = "Left home early for work without taking the tablet."

Instance: obs-adherence-carlos
InstanceOf: AdherenceObservation
Usage: #example
Title: "Carlos Pereira — 75% adherence rate"
* status = #final
* code = AdherenceObservationCodeCS#adherence-rate
* subject = Reference(patient-forgetful-carlos)
* effectivePeriod.start = "2025-06-01"
* effectivePeriod.end = "2025-06-07"
* valueQuantity = 75 '%'
* focus[0] = Reference(rx-lisinopril-carlos)
