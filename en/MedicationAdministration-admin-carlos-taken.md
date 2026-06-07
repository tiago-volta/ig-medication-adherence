# Carlos Pereira — dose taken - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationAdministration: Carlos Pereira — dose taken

Profile: [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)

**status**: Completed

**medication**: Lisinopril 10 mg tablet

**subject**: [Carlos Pereira Male, DoB: 1958-11-04 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-forgetful-carlos)](Patient-patient-forgetful-carlos.md)

**effective**: 2025-06-02 08:00:00+0100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Carlos Pereira Male, DoB: 1958-11-04 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-forgetful-carlos)](Patient-patient-forgetful-carlos.md) |

### Dosages

| | |
| :--- | :--- |
| - | **Text** |
| * | 10 mg in the morning |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "admin-carlos-taken",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-administration-adherence"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "lisinopril"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-forgetful-carlos"
  },
  "effectiveDateTime" : "2025-06-02T08:00:00+01:00",
  "performer" : [{
    "actor" : {
      "reference" : "Patient/patient-forgetful-carlos"
    }
  }],
  "dosage" : {
    "text" : "10 mg in the morning"
  }
}

```
