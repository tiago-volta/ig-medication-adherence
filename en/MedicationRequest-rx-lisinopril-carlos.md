# Lisinopril prescription for Carlos Pereira - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationRequest: Lisinopril prescription for Carlos Pereira

Profile: [Medication Request for Adherence Tracking](StructureDefinition-medication-request-adherence.md)

**status**: Active

**intent**: Order

**medication**: Lisinopril 10 mg tablet

**subject**: [Carlos Pereira Male, DoB: 1958-11-04 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-forgetful-carlos)](Patient-patient-forgetful-carlos.md)

**authoredOn**: 2025-04-15

**requester**: [Practitioner João Costa ](Practitioner-practitioner-example.md)

**reasonCode**: Essential hypertension

> **dosageInstruction****text**: Take 10 mg by mouth once daily in the morning**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 10 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "rx-lisinopril-carlos",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-request-adherence"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "lisinopril"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-forgetful-carlos"
  },
  "authoredOn" : "2025-04-15",
  "requester" : {
    "reference" : "Practitioner/practitioner-example"
  },
  "reasonCode" : [{
    "text" : "Essential hypertension"
  }],
  "dosageInstruction" : [{
    "text" : "Take 10 mg by mouth once daily in the morning",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 10,
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
