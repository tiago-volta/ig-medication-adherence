// Scenario 3: patient with adverse events linked to non-adherence (Ana López)

Instance: patient-ae-ana
InstanceOf: PatientAdherence
Usage: #example
Title: "Ana López — adverse events and non-adherence"
Description: "Patient who skips doses after experiencing gastrointestinal side effects."
* identifier[0].system = "https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id"
* identifier[0].value = "patient-ae-ana"
* active = true
* name[0].family = "López"
* name[0].given[0] = "Ana"
* gender = #female
* birthDate = "1972-07-22"

Instance: rx-ibuprofen-ana
InstanceOf: MedicationRequestAdherence
Usage: #example
Title: "Ibuprofen prescription for Ana López"
* status = #active
* intent = #order
* medicationCodeableConcept = AdherenceMedicationCS#ibuprofen
* subject = Reference(patient-ae-ana)
* authoredOn = "2025-05-20"
* requester = Reference(practitioner-example)
* reasonCode[0].text = "Chronic knee pain"
* dosageInstruction[0].text = "Take 400 mg by mouth three times daily with food"
* dosageInstruction[0].timing.repeat.frequency = 3
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate[0].doseQuantity = 400 'mg'

Instance: allergy-aspirin-ana
InstanceOf: AllergyIntolerance
Usage: #example
Title: "Ana López — aspirin allergy (NSAID context)"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code.text = "Aspirin"
* patient = Reference(patient-ae-ana)
* reaction[0].manifestation[0].text = "Urticaria"

Instance: admin-ana-taken
InstanceOf: MedicationAdministrationAdherence
Usage: #example
Title: "Ana López — initial dose taken"
* status = #completed
* medicationCodeableConcept = AdherenceMedicationCS#ibuprofen
* subject = Reference(patient-ae-ana)
* effectiveDateTime = "2025-06-04T09:00:00+01:00"
* performer[0].actor = Reference(patient-ae-ana)
* dosage.text = "400 mg with breakfast"

Instance: admin-ana-skipped
InstanceOf: MedicationAdministrationAdherence
Usage: #example
Title: "Ana López — dose skipped due to adverse effects"
* status = #not-done
* medicationCodeableConcept = AdherenceMedicationCS#ibuprofen
* subject = Reference(patient-ae-ana)
* effectiveDateTime = "2025-06-04T13:00:00+01:00"
* statusReason = AdherenceReasonCS#adverse-effects
* extension[missedDoseDetail].valueString = "Stopped midday dose after nausea and stomach pain from the morning dose."

Instance: obs-adherence-ana
InstanceOf: AdherenceObservation
Usage: #example
Title: "Ana López — adherence assessment (adverse effects)"
* status = #final
* code = AdherenceObservationCodeCS#adherence-assessment
* subject = Reference(patient-ae-ana)
* effectiveDateTime = "2025-06-05"
* valueCodeableConcept = AdherenceReasonCS#adverse-effects
* focus[0] = Reference(rx-ibuprofen-ana)
