# Medication Request for Adherence Tracking - Medication Adherence — Learning Implementation Guide v0.2.0

## Resource Profile: Medication Request for Adherence Tracking 

 
Profile of MedicationRequest for prescribing medications whose adherence will be monitored. Includes dosage instructions, dispense details, and clinical indication. 

**Usages:**

* Examples for this Profile: [MedicationRequest/rx-ibuprofen-ana](MedicationRequest-rx-ibuprofen-ana.md), [MedicationRequest/rx-lisinopril-carlos](MedicationRequest-rx-lisinopril-carlos.md) and [MedicationRequest/rx-metformin-maria](MedicationRequest-rx-metformin-maria.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/medication-adherence|current/StructureDefinition/StructureDefinition-medication-request-adherence.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-medication-request-adherence.csv), [Excel](../StructureDefinition-medication-request-adherence.xlsx), [Schematron](../StructureDefinition-medication-request-adherence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medication-request-adherence",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-request-adherence",
  "version" : "0.2.0",
  "name" : "MedicationRequestAdherence",
  "title" : "Medication Request for Adherence Tracking",
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
  "description" : "Profile of MedicationRequest for prescribing medications whose adherence will be monitored. Includes dosage instructions, dispense details, and clinical indication.",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "patternCode" : "order"
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "min" : 1
    }]
  }
}

```
