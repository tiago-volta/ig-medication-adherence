# Ana López — adverse events and non-adherence - Medication Adherence — Learning Implementation Guide v0.2.0

## Example Patient: Ana López — adverse events and non-adherence

Profile: [Patient for Adherence Tracking](StructureDefinition-patient-adherence.md)

Ana López Female, DoB: 1972-07-22 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-ae-ana)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-ae-ana",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/patient-adherence"]
  },
  "identifier" : [{
    "system" : "https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id",
    "value" : "patient-ae-ana"
  }],
  "active" : true,
  "name" : [{
    "family" : "López",
    "given" : ["Ana"]
  }],
  "gender" : "female",
  "birthDate" : "1972-07-22"
}

```
