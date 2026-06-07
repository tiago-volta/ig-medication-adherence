# Non-Adherence Reason Codes (Illustrative) - Medication Adherence — Learning Implementation Guide v0.2.0

## CodeSystem: Non-Adherence Reason Codes (Illustrative) 

 
Local code system for common reasons of medication non-adherence. For learning and demonstration only; not a clinical standard. 

This Code system is referenced in the definition of the following value sets:

* [AdherenceReasonVS](ValueSet-adherence-reason.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "adherence-reason",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-reason",
  "version" : "0.2.0",
  "name" : "AdherenceReasonCS",
  "title" : "Non-Adherence Reason Codes (Illustrative)",
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
  "description" : "Local code system for common reasons of medication non-adherence. For learning and demonstration only; not a clinical standard.",
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
  "count" : 6,
  "concept" : [{
    "code" : "forgot",
    "display" : "Forgot dose",
    "definition" : "Patient forgot to take the medication at the scheduled time."
  },
  {
    "code" : "adverse-effects",
    "display" : "Adverse effects",
    "definition" : "Patient stopped or skipped doses due to side effects."
  },
  {
    "code" : "cost",
    "display" : "Cost / affordability",
    "definition" : "Patient skipped doses due to medication cost."
  },
  {
    "code" : "felt-better",
    "display" : "Felt better",
    "definition" : "Patient stopped because symptoms improved."
  },
  {
    "code" : "complex-regimen",
    "display" : "Complex regimen",
    "definition" : "Regimen complexity led to missed doses."
  },
  {
    "code" : "other",
    "display" : "Other reason",
    "definition" : "Other or unspecified non-adherence reason."
  }]
}

```
