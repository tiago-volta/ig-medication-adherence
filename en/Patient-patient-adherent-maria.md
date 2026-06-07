# Maria Silva — adherent patient - Medication Adherence — Learning Implementation Guide v0.2.0

## Example Patient: Maria Silva — adherent patient

Profile: [Patient for Adherence Tracking](StructureDefinition-patient-adherence.md)

Maria Silva Female, DoB: 1965-03-12 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-adherent-maria)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-adherent-maria",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/patient-adherence"]
  },
  "identifier" : [{
    "system" : "https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id",
    "value" : "patient-adherent-maria"
  }],
  "active" : true,
  "name" : [{
    "family" : "Silva",
    "given" : ["Maria"]
  }],
  "gender" : "female",
  "birthDate" : "1965-03-12"
}

```
