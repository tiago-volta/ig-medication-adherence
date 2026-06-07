# Ana López — dose skipped due to adverse effects - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationAdministration: Ana López — dose skipped due to adverse effects

Profile: [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)

**Missed Dose Detail**: Stopped midday dose after nausea and stomach pain from the morning dose.

**status**: Not Done

**statusReason**: Adverse effects

**medication**: Ibuprofen 400 mg tablet

**subject**: [Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)](Patient-patient-ae-ana.md)

**effective**: 2025-06-04 13:00:00+0100



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "admin-ana-skipped",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-administration-adherence"]
  },
  "extension" : [{
    "url" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/missed-dose-detail",
    "valueString" : "Stopped midday dose after nausea and stomach pain from the morning dose."
  }],
  "status" : "not-done",
  "statusReason" : [{
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-reason",
      "code" : "adverse-effects"
    }]
  }],
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "ibuprofen"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-ae-ana"
  },
  "effectiveDateTime" : "2025-06-04T13:00:00+01:00"
}

```
