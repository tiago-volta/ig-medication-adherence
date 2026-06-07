# Maria Silva — 100% adherence rate - Medication Adherence — Learning Implementation Guide v0.2.0

## Example Observation: Maria Silva — 100% adherence rate

Profile: [Observation of Medication Adherence](StructureDefinition-adherence-observation.md)

**status**: Final

**code**: Medication adherence rate

**subject**: [Maria Silva Female, DoB: 1965-03-12 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-adherent-maria)](Patient-patient-adherent-maria.md)

**focus**: [MedicationRequest: status = active; intent = order; medication[x] = Metformin 500 mg tablet; authoredOn = 2025-05-01; reasonCode = ](MedicationRequest-rx-metformin-maria.md)

**effective**: 2025-06-01 --> 2025-06-07

**value**: 100 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "obs-adherence-maria",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/adherence-observation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-observation-code",
      "code" : "adherence-rate"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-adherent-maria"
  },
  "focus" : [{
    "reference" : "MedicationRequest/rx-metformin-maria"
  }],
  "effectivePeriod" : {
    "start" : "2025-06-01",
    "end" : "2025-06-07"
  },
  "valueQuantity" : {
    "value" : 100,
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  }
}

```
