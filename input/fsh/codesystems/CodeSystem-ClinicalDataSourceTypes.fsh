CodeSystem: ClinicalDataSourceTypes
Id: clinical-data-source-types
Title: "Clinical Data Source Types"
Description: "Clinical Data Source Types"
* ^url = $clinical-data-source-types
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "INCLUDE FHIR"
* ^content = #fragment
* #medical-record "Medical Record"
* #investigator-assessment "Investigator Assessment"
* #participant-or-caregiver-report "Participant or Caregiver Report"
* #other "Other"
* #unknown "Unknown"