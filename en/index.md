# Home - Medication Adherence — Learning Implementation Guide v0.2.0

## Home

# Medication Adherence — Learning IG

This experimental Implementation Guide (IG) models FHIR R4 data for **medication adherence**: prescriptions, recorded administrations, and monitoring observations.

> **Learning project.** Profiles, local codes, and patient scenarios are illustrative. They do not replace certified clinical guides or production-standard terminologies.

## Purpose

Demonstrate how to represent and exchange information about:

* Which medication was prescribed (`MedicationRequest`)
* Which doses were taken, skipped, or refused (`MedicationAdministration`)
* How adherence is measured or summarized (`Observation`)

The main goal is to **learn SUSHI, FSH, and IG Publisher** with a coherent but scoped clinical use case.

## Scope and limitations

| | |
| :--- | :--- |
| 5 FHIR profiles + 1 extension | Clinical validation |
| 3 local CodeSystems and 3 ValueSets | Production SNOMED/LOINC terminology |
| 3 patient scenarios with FSH instances | Integration with real systems |
|   | Conformance with national profiles (e.g. HL7 Spain) |

Medication and non-adherence reason codes live in local CodeSystems (`adherence-medication`, `adherence-reason`). They are documented as **illustrative only**.

## Data flow

```
flowchart LR
  P[Patient] --> MR[MedicationRequest]
  MR --> MA[MedicationAdministration]
  MA -->|status completed| OK[Dose taken]
  MA -->|status not-done| RN[statusReason + Extension]
  MR --> OBS[AdherenceObservation]
  P --> OBS
  OBS -->|valueQuantity| PCT["% adherence"]
  OBS -->|valueCodeableConcept| REASON["Coded assessment"]

```

1. A clinician prescribes medication (`MedicationRequestAdherence`).
1. Each scheduled dose produces an administration record (`MedicationAdministrationAdherence`).
1. A periodic summary captures adherence as a percentage or coded assessment (`AdherenceObservation`).

## IG content

### Profiles

* `PatientAdherence`
* `MedicationRequestAdherence`
* `MedicationAdministrationAdherence`
* `AdherenceObservation`
* `AllergyIntolerance` (example instance without a dedicated profile)

### Terminology (local, illustrative)

* **Non-adherence reasons:** forgot, adverse effects, cost, felt better, regimen complexity
* **Observation codes:** adherence rate (%), coded assessment
* **Example medications:** metformin, lisinopril, ibuprofen

### Example scenarios

| | | |
| :--- | :--- | :--- |
| Adherent | Maria Silva | 100% of doses taken |
| Intermittent forgetfulness | Carlos Pereira | 75%; dose missed due to forgetfulness |
| Adverse events | Ana Lopez | Dose skipped due to adverse effects; aspirin allergy documented |

## Intellectual property

FHIR and this guide are published under public domain (CC0-1.0). Examples may reference terminologies with restrictive licenses (LOINC, SNOMED). Do not use these artifacts in production without reviewing those licenses.

## Disclaimer

This specification is a learning draft. It is provided without warranty of completeness or clinical consistency.

