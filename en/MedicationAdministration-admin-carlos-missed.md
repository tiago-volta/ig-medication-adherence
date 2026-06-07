# Carlos Pereira — dose missed (forgot) - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationAdministration: Carlos Pereira — dose missed (forgot)

Profile: [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)

**Missed Dose Detail**: Left home early for work without taking the tablet.

**status**: Not Done

**statusReason**: Forgot dose

**medication**: Lisinopril 10 mg tablet

**subject**: [Carlos Pereira Male, DoB: 1958-11-04 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-forgetful-carlos)](Patient-patient-forgetful-carlos.md)

**effective**: 2025-06-03 08:00:00+0100



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "admin-carlos-missed",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-administration-adherence"]
  },
  "extension" : [{
    "url" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/missed-dose-detail",
    "valueString" : "Left home early for work without taking the tablet."
  }],
  "status" : "not-done",
  "statusReason" : [{
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-reason",
      "code" : "forgot"
    }]
  }],
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "lisinopril"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-forgetful-carlos"
  },
  "effectiveDateTime" : "2025-06-03T08:00:00+01:00"
}

```
