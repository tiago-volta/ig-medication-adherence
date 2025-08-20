Profile: PatientAdherence
Parent: Patient
Id: patient-adherence
Title: "Patient Profile"
Description: "Profile of Patient resource for medication adherence tracking"

* identifier 1..* MS
* active 1..1 MS
* name 1..* MS
* telecom 0..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* address 0..* MS
* maritalStatus 0..1
* photo 0..*

* contact.role 0..* MS
* contact.relationship MS
* contact.name 1..1 MS
* contact.additionalName 0..1 MS
* contact.telecom 0..* MS
* contact.address 0..1
* contact.organization

* communication 0..* MS
* communication.language 1..1
* communication.preferred 0..1

* generalPractitioner 0..* MS
* managingOrganization 0..1 MS


