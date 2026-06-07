# Maria Silva — morning dose taken - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationAdministration: Maria Silva — morning dose taken

Profile: [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)

**status**: Completed

**medication**: Metformin 500 mg tablet

**subject**: [Maria Silva Female, DoB: 1965-03-12 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-adherent-maria)](Patient-patient-adherent-maria.md)

**effective**: 2025-06-01 08:00:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Maria Silva Female, DoB: 1965-03-12 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-adherent-maria)](Patient-patient-adherent-maria.md) |

### Dosages

| | |
| :--- | :--- |
| - | **Text** |
| * | 500 mg with breakfast |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "admin-maria-am",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-administration-adherence"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "metformin"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-adherent-maria"
  },
  "effectiveDateTime" : "2025-06-01T08:00:00+01:00",
  "performer" : [{
    "actor" : {
      "reference" : "Patient/patient-adherent-maria"
    }
  }],
  "dosage" : {
    "text" : "500 mg with breakfast"
  }
}

```
