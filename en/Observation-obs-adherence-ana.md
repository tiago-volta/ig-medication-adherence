# Ana López — adherence assessment (adverse effects) - Medication Adherence — Learning Implementation Guide v0.2.0

## Example Observation: Ana López — adherence assessment (adverse effects)

Profile: [Observation of Medication Adherence](StructureDefinition-adherence-observation.md)

**status**: Final

**code**: Adherence assessment

**subject**: [Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)](Patient-patient-ae-ana.md)

**focus**: [MedicationRequest: status = active; intent = order; medication[x] = Ibuprofen 400 mg tablet; authoredOn = 2025-05-20; reasonCode = ](MedicationRequest-rx-ibuprofen-ana.md)

**effective**: 2025-06-05

**value**: Adverse effects



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "obs-adherence-ana",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/adherence-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-observation-code",
      "code" : "adherence-assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-ae-ana"
  },
  "focus" : [{
    "reference" : "MedicationRequest/rx-ibuprofen-ana"
  }],
  "effectiveDateTime" : "2025-06-05",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-reason",
      "code" : "adverse-effects"
    }]
  }
}

```
