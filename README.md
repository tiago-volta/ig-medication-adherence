# Medication Adherence — Learning Implementation Guide

Learning repository for a **FHIR R4 Implementation Guide (IG)** on medication adherence.

**Published IG:** [tiago-volta.github.io/ig-medication-adherence](https://tiago-volta.github.io/ig-medication-adherence/)

**Author:** Tiago Volta — Software Engineering, UDC

## Purpose

Model prescriptions, administrations, and adherence observations with FHIR Shorthand (FSH) and SUSHI. Educational project to explore profiles, extensions, terminology, and example instances. Not a certified clinical IG.

## Implemented content

### Profiles (`input/fsh/profiles/`)

| Profile | Base resource | Purpose |
|---------|---------------|---------|
| `PatientAdherence` | Patient | Minimal demographics for scenarios |
| `MedicationRequestAdherence` | MedicationRequest | Prescription with `dosageInstruction`, `dispenseRequest`, `reasonCode` |
| `MedicationAdministrationAdherence` | MedicationAdministration | Doses taken or missed with `statusReason` and `MissedDoseDetail` extension |
| `AdherenceObservation` | Observation | Adherence percentage or coded assessment |

Scenarios include an `AllergyIntolerance` instance using the base FHIR resource (no custom profile).

### Terminology (`input/fsh/terminology/`)

**Local, illustrative** CodeSystems and ValueSets:

- `adherence-reason` — non-adherence reasons (forgot, adverse effects, cost, etc.)
- `adherence-observation-code` — adherence observation codes
- `adherence-medication` — example medications (metformin, lisinopril, ibuprofen)

### Extension (`input/fsh/extensions/`)

- `MissedDoseDetail` — free-text detail complementing `statusReason` on `MedicationAdministrationAdherence`

> **FHIR R4 note:** missed-dose reason is modeled with `MedicationAdministration.statusReason`, not `reasonNotGiven` (an R5 element).

### Example scenarios (`input/fsh/instances/`)

| Scenario | Patient | File |
|----------|---------|------|
| Fully adherent | Maria Silva | `scenario-adherent.fsh` |
| Intermittent forgetfulness | Carlos Pereira | `scenario-forgetful.fsh` |
| Adverse events | Ana Lopez | `scenario-adverse-events.fsh` |

Each scenario includes a `Patient`, `MedicationRequest`, at least one `MedicationAdministration`, and one `Observation` linked by references.

## Project structure

```
input/fsh/
  profiles/       # StructureDefinitions
  terminology/    # CodeSystem + ValueSet
  extensions/     # Extension
  instances/      # Example instances (FSH)
input/pagecontent/
  index.md        # IG home page
sushi-config.yaml # IG metadata
ig.ini            # IG Publisher configuration
.github/workflows/ghbuild.yml  # CI → GitHub Pages
```

## Build locally

### Requirements

- [Node.js](https://nodejs.org/) (LTS)
- [Java](https://adoptium.net/) 11+
- [SUSHI](https://fshschool.org/docs/sushi/installation/): `npm install -g fsh-sushi`
- IG Publisher (downloaded via the repo script)

### Steps

```powershell
# 1. Clone the repository
git clone https://github.com/tiago-volta/ig-medication-adherence.git
cd ig-medication-adherence

# 2. Generate FHIR resources from FSH
sushi .

# 3. Download IG Publisher (first time only)
.\_updatePublisher.bat

# 4. Publish the IG
.\_build.bat build
```

The HTML site is written to `output/index.html`. Open that file in a browser.

After FSH changes, run `sushi .` and `.\_build.bat build` again.

### Without external terminology server

If `tx.fhir.org` is unavailable:

```powershell
.\_build.bat notx
```

## Publication (GitHub Pages)

The `.github/workflows/ghbuild.yml` workflow delegates to [smart-base/ghbuild](https://github.com/WorldHealthOrganization/smart-base). On each push to `master` (except `gh-pages`), the IG is built and published at:

**https://tiago-volta.github.io/ig-medication-adherence/**

## License

[CC0-1.0](LICENSE) — public domain.

Example terminology is illustrative only. Do not use these codes in real clinical systems.

## Stack

- FHIR R4 (4.0.1)
- [FSH](https://fshschool.org/) / [SUSHI](https://fshschool.org/docs/sushi/)
- [HL7 IG Publisher](https://github.com/HL7/fhir-ig-publisher)
