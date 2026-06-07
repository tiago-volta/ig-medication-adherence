# Metformin prescription for Maria Silva - Medication Adherence — Learning Implementation Guide v0.2.0

## Example MedicationRequest: Metformin prescription for Maria Silva

Profile: [Medication Request for Adherence Tracking](StructureDefinition-medication-request-adherence.md)

**status**: Active

**intent**: Order

**medication**: Metformin 500 mg tablet

**subject**: [Maria Silva Female, DoB: 1965-03-12 ( https://tiago-volta.github.io/ig-medication-adherence/NamingSystem/patient-id#patient-adherent-maria)](Patient-patient-adherent-maria.md)

**authoredOn**: 2025-05-01

**requester**: [Practitioner João Costa ](Practitioner-practitioner-example.md)

**reasonCode**: Type 2 diabetes mellitus

> **dosageInstruction****text**: Take 500 mg by mouth twice daily with meals**timing**: 2 per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500 mg (Details: UCUM codemg = 'mg') |


> **dispenseRequest****quantity**: 60 {tablet} (Details: UCUM code{tablet} = '{tablet}')

### ExpectedSupplyDurations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Value** | **System** | **Code** |
| * | 30 | [http://unitsofmeasure.org](http://tx.fhir.org/r4/ValueSet/x-ucum) | d |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "rx-metformin-maria",
  "meta" : {
    "profile" : ["https://tiago-volta.github.io/ig-medication-adherence/StructureDefinition/medication-request-adherence"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://tiago-volta.github.io/ig-medication-adherence/CodeSystem/adherence-medication",
      "code" : "metformin"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-adherent-maria"
  },
  "authoredOn" : "2025-05-01",
  "requester" : {
    "reference" : "Practitioner/practitioner-example"
  },
  "reasonCode" : [{
    "text" : "Type 2 diabetes mellitus"
  }],
  "dosageInstruction" : [{
    "text" : "Take 500 mg by mouth twice daily with meals",
    "timing" : {
      "repeat" : {
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 500,
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }],
  "dispenseRequest" : {
    "quantity" : {
      "value" : 60,
      "system" : "http://unitsofmeasure.org",
      "code" : "{tablet}"
    },
    "expectedSupplyDuration" : {
      "value" : 30,
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }
}

```
