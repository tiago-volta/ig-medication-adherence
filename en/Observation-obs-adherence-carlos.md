# Carlos Pereira — 75% adherence rate - Medication Adherence — Learning Implementation Guide v0.2.0

## Example Observation: Carlos Pereira — 75% adherence rate

Profile: [Observation of Medication Adherence](StructureDefinition-adherence-observation.md)

**status**: Final

**code**: Medication adherence rate

**subject**: [Carlos Pereira Male, DoB: 1958-11-04 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-forgetful-carlos)](Patient-patient-forgetful-carlos.md)

**focus**: [MedicationRequest: status = active; intent = order; medication[x] = Lisinopril 10 mg tablet; authoredOn = 2025-04-15; reasonCode = ](MedicationRequest-rx-lisinopril-carlos.md)

**effective**: 2025-06-01 --> 2025-06-07

**value**: 75 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "obs-adherence-carlos",
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
    "reference" : "Patient/patient-forgetful-carlos"
  },
  "focus" : [{
    "reference" : "MedicationRequest/rx-lisinopril-carlos"
  }],
  "effectivePeriod" : {
    "start" : "2025-06-01",
    "end" : "2025-06-07"
  },
  "valueQuantity" : {
    "value" : 75,
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  }
}

```
