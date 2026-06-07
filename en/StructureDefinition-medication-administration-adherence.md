# Medication Administration for Adherence Tracking - Medication Adherence — Learning Implementation Guide v0.2.0

## Resource Profile: Medication Administration for Adherence Tracking 

 
Profile of MedicationAdministration for recording whether a prescribed dose was taken, skipped, or refused. Use statusReason (FHIR R4) when status is not-done. 

**Usages:**

* Examples for this Profile: [MedicationAdministration/admin-ana-skipped](MedicationAdministration-admin-ana-skipped.md), [MedicationAdministration/admin-ana-taken](MedicationAdministration-admin-ana-taken.md), [MedicationAdministration/admin-carlos-missed](MedicationAdministration-admin-carlos-missed.md), [MedicationAdministration/admin-carlos-taken](MedicationAdministration-admin-carlos-taken.md)... Show 2 more, [MedicationAdministration/admin-maria-am](MedicationAdministration-admin-maria-am.md) and [MedicationAdministration/admin-maria-pm](MedicationAdministration-admin-maria-pm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/medication-adherence|current/StructureDefinition/StructureDefinition-medication-administration-adherence.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-medication-administration-adherence.csv), [Excel](../StructureDefinition-medication-administration-adherence.xlsx), [Schematron](../StructureDefinition-medication-administration-adherence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medication-administration-adherence",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-administration-adherence",
  "version" : "0.2.0",
  "name" : "MedicationAdministrationAdherence",
  "title" : "Medication Administration for Adherence Tracking",
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
  "description" : "Profile of MedicationAdministration for recording whether a prescribed dose was taken, skipped, or refused. Use statusReason (FHIR R4) when status is not-done.",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.extension",
      "path" : "MedicationAdministration.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.extension:missedDoseDetail",
      "path" : "MedicationAdministration.extension",
      "sliceName" : "missedDoseDetail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/missed-dose-detail"]
      }]
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "max" : "1",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-reason"
      }
    }]
  }
}

```
