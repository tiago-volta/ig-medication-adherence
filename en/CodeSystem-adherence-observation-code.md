# Adherence Observation Codes (Illustrative) - Medication Adherence — Learning Implementation Guide v0.2.0

## CodeSystem: Adherence Observation Codes (Illustrative) 

 
Local code system for adherence-related observations. For learning and demonstration only. 

This Code system is referenced in the definition of the following value sets:

* [AdherenceObservationCodeVS](ValueSet-adherence-observation-code.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "adherence-observation-code",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-observation-code",
  "version" : "0.2.0",
  "name" : "AdherenceObservationCodeCS",
  "title" : "Adherence Observation Codes (Illustrative)",
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
  "description" : "Local code system for adherence-related observations. For learning and demonstration only.",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "adherence-rate",
    "display" : "Medication adherence rate",
    "definition" : "Percentage of prescribed doses taken in a measurement period."
  },
  {
    "code" : "adherence-assessment",
    "display" : "Adherence assessment",
    "definition" : "Coded summary of adherence status or primary non-adherence reason."
  }]
}

```
