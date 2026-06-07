# Adherence Observation Codes - Medication Adherence — Learning Implementation Guide v0.2.0

## ValueSet: Adherence Observation Codes 

 
Codes for observations that measure or assess medication adherence. 

 **References** 

* [Observation of Medication Adherence](StructureDefinition-adherence-observation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "adherence-observation-code",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-observation-code",
  "version" : "0.2.0",
  "name" : "AdherenceObservationCodeVS",
  "title" : "Adherence Observation Codes",
  "status" : "draft",
  "date" : "2026-06-07T14:22:39+00:00",
  "publisher" : "Tiago Volta",
  "contact" : [{
    "name" : "Tiago Volta",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/tiago-volta"
    },
    {
      "system" : "email",
      "value" : "tiagovolta2@gmail.com"
    }]
  },
  {
    "name" : "Tiago Volta",
    "telecom" : [{
      "system" : "email",
      "value" : "tiagovolta2@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Codes for observations that measure or assess medication adherence.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  },
  {
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ES",
      "display" : "Spain"
    }]
  },
  {
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EU",
      "display" : "European Union"
    }]
  }],
  "copyright" : "CC0-1.0. Example terminology is illustrative only.",
  "compose" : {
    "include" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-observation-code"
    }]
  }
}

```
