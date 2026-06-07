# Carlos Pereira — intermittent forgetfulness - Medication Adherence — Learning Implementation Guide v0.2.0

## Example Patient: Carlos Pereira — intermittent forgetfulness

Profile: [Patient for Adherence Tracking](StructureDefinition-patient-adherence.md)

Carlos Pereira Male, DoB: 1958-11-04 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-forgetful-carlos)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-forgetful-carlos",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/patient-adherence"]
  },
  "identifier" : [{
    "system" : "https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id",
    "value" : "patient-forgetful-carlos"
  }],
  "active" : true,
  "name" : [{
    "family" : "Pereira",
    "given" : ["Carlos"]
  }],
  "gender" : "male",
  "birthDate" : "1958-11-04"
}

```
