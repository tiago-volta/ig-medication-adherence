# Ibuprofen prescription for Ana López - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationRequest: Ibuprofen prescription for Ana López

Profile: [Medication Request for Adherence Tracking](StructureDefinition-medication-request-adherence.md)

**status**: Active

**intent**: Order

**medication**: Ibuprofen 400 mg tablet

**subject**: [Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)](Patient-patient-ae-ana.md)

**authoredOn**: 2025-05-20

**requester**: [Practitioner João Costa ](Practitioner-practitioner-example.md)

**reasonCode**: Chronic knee pain

> **dosageInstruction****text**: Take 400 mg by mouth three times daily with food**timing**: 3 per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 400 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "rx-ibuprofen-ana",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-request-adherence"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "ibuprofen"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-ae-ana"
  },
  "authoredOn" : "2025-05-20",
  "requester" : {
    "reference" : "Practitioner/practitioner-example"
  },
  "reasonCode" : [{
    "text" : "Chronic knee pain"
  }],
  "dosageInstruction" : [{
    "text" : "Take 400 mg by mouth three times daily with food",
    "timing" : {
      "repeat" : {
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 400,
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
