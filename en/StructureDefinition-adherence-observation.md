# Observation of Medication Adherence - Medication Adherence — Learning Implementation Guide v0.2.0

## Resource Profile: Observation of Medication Adherence 

 
Profile of Observation to capture adherence measurements (percentage of doses taken) or coded adherence assessments (e.g. non-adherence reason summaries). 

**Usages:**

* Examples for this Profile: [Observation/obs-adherence-ana](Observation-obs-adherence-ana.md), [Observation/obs-adherence-carlos](Observation-obs-adherence-carlos.md) and [Observation/obs-adherence-maria](Observation-obs-adherence-maria.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/medication-adherence|current/StructureDefinition/StructureDefinition-adherence-observation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-adherence-observation.csv), [Excel](../StructureDefinition-adherence-observation.xlsx), [Schematron](../StructureDefinition-adherence-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "adherence-observation",
  "url" : "https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/adherence-observation",
  "version" : "0.2.0",
  "name" : "AdherenceObservation",
  "title" : "Observation of Medication Adherence",
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
  "description" : "Profile of Observation to capture adherence measurements (percentage of doses taken) or coded adherence assessments (e.g. non-adherence reason summaries).",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://tiago-volta.github.io/ig-medication-adherence/ValueSet/adherence-observation-code"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
