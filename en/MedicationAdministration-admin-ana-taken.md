# Ana López — initial dose taken - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationAdministration: Ana López — initial dose taken

Profile: [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)

**status**: Completed

**medication**: Ibuprofen 400 mg tablet

**subject**: [Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)](Patient-patient-ae-ana.md)

**effective**: 2025-06-04 09:00:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)](Patient-patient-ae-ana.md) |

### Dosages

| | |
| :--- | :--- |
| - | **Text** |
| * | 400 mg with breakfast |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "admin-ana-taken",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-administration-adherence"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "ibuprofen"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-ae-ana"
  },
  "effectiveDateTime" : "2025-06-04T09:00:00+01:00",
  "performer" : [{
    "actor" : {
      "reference" : "Patient/patient-ae-ana"
    }
  }],
  "dosage" : {
    "text" : "400 mg with breakfast"
  }
}

```
