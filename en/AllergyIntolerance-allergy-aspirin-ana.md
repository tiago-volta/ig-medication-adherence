# Ana López — aspirin allergy (NSAID context) - Medication Adherence — Learning Implementation Guide v0.2.0

## Example AllergyIntolerance: Ana López — aspirin allergy (NSAID context)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Aspirin

**patient**: [Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)](Patient-patient-ae-ana.md)

### Reactions

| | |
| :--- | :--- |
| - | **Manifestation** |
| * | Urticaria |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergy-aspirin-ana",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "text" : "Aspirin"
  },
  "patient" : {
    "reference" : "Patient/patient-ae-ana"
  },
  "reaction" : [{
    "manifestation" : [{
      "text" : "Urticaria"
    }]
  }]
}

```
