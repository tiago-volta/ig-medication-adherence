# Missed Dose Detail - Medication Adherence — Learning Implementation Guide v0.2.0

## Extension: Missed Dose Detail 

Optional free-text detail when a dose was not taken, complementing statusReason.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Administration for Adherence Tracking](StructureDefinition-medication-administration-adherence.md)
* Examples for this Extension: [MedicationAdministration/admin-ana-skipped](MedicationAdministration-admin-ana-skipped.md) and [MedicationAdministration/admin-carlos-missed](MedicationAdministration-admin-carlos-missed.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/medication-adherence|current/StructureDefinition/StructureDefinition-missed-dose-detail.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-missed-dose-detail.csv), [Excel](../StructureDefinition-missed-dose-detail.xlsx), [Schematron](../StructureDefinition-missed-dose-detail.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "missed-dose-detail",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/missed-dose-detail",
  "version" : "0.2.0",
  "name" : "MissedDoseDetail",
  "title" : "Missed Dose Detail",
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
  "description" : "Optional free-text detail when a dose was not taken, complementing statusReason.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationAdministration"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Missed Dose Detail",
      "definition" : "Optional free-text detail when a dose was not taken, complementing statusReason."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/missed-dose-detail"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
