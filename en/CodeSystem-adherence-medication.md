# Example Medication Codes (Illustrative) - Medication Adherence — Learning Implementation Guide v0.2.0

## CodeSystem: Example Medication Codes (Illustrative) 

 
Local medication codes used in example instances. Not mapped to SNOMED or ATC. 

This Code system is referenced in the definition of the following value sets:

* [AdherenceMedicationVS](ValueSet-adherence-medication.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "adherence-medication",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
  "version" : "0.2.0",
  "name" : "AdherenceMedicationCS",
  "title" : "Example Medication Codes (Illustrative)",
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
  "description" : "Local medication codes used in example instances. Not mapped to SNOMED or ATC.",
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
  "count" : 3,
  "concept" : [{
    "code" : "metformin",
    "display" : "Metformin 500 mg tablet",
    "definition" : "Example oral antidiabetic for adherence scenarios."
  },
  {
    "code" : "lisinopril",
    "display" : "Lisinopril 10 mg tablet",
    "definition" : "Example antihypertensive for adherence scenarios."
  },
  {
    "code" : "ibuprofen",
    "display" : "Ibuprofen 400 mg tablet",
    "definition" : "Example NSAID for adverse-event adherence scenarios."
  }]
}

```
