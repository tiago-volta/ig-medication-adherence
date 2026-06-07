# Non-Adherence Reasons - Medication Adherence — Learning Implementation Guide v0.2.0

## ValueSet: Non-Adherence Reasons 

 
Value set of illustrative reasons for missed or refused medication doses. 

 **References** 

* [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "adherence-reason",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-reason",
  "version" : "0.2.0",
  "name" : "AdherenceReasonVS",
  "title" : "Non-Adherence Reasons",
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
  "description" : "Value set of illustrative reasons for missed or refused medication doses.",
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
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-reason"
    }]
  }
}

```
