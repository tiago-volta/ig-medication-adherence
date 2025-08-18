# Medication Adherence & Monitoring Implementation Guide

This repository contains an experimental **FHIR Implementation Guide (IG)** focused on modeling **medication adherence and monitoring**.  

It was developed as a **learning project**, to go beyond the basics of FHIR Shorthand (FSH) and SUSHI, by exploring more advanced IG features such as profiles, extensions, value sets, and multiple patient scenarios.

## Purpose

The goal of this IG is to demonstrate how FHIR can be used to represent and exchange data about **patient adherence to prescribed medications**, including reasons for missed doses and the clinical impact of adherence or non-adherence.

This project serves as a **hands-on exercise for learning SUSHI, FSH, and IG Publisher**.

## Contents

This IG includes:

- **Profiles**
  - `MedicationRequest` for prescriptions  
  - `MedicationStatement` / `MedicationAdministration` for recording medication usage  
  - `Observation` for adherence tracking  

- **Extensions**
  - Example: reason for non-adherence (e.g., side effects, forgetfulness, cost issues)  

- **Terminologies**
  - ValueSets for adherence reasons  
  - Example medication codes (e.g., antihypertensives, antibiotics)  

- **Examples**
  - A patient fully adherent to treatment  
  - A patient missing doses due to forgetfulness  
  - A patient experiencing adverse events linked to non-adherence  


