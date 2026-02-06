CodeSystem: ClinicalTrials
Id: clinical-trials
Title: "Clinical Trials"
Description: "Clinical Trial Fields Used in INCLUDE Datasets"
* ^url = $clinical_trials
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #study-code "Study Code"
* #nct-id "NCT ID"
* #trial-phase "Trial Phase"
* #primary-purpose "Primary Purpose"
* #intervention-type "Intervention Type"
* #intervention "Intervention"
* #arm-information "Arm Information"
* #arm-allocation "Arm Allocation"
* #intervention-assignment-strategy "Intervention Assignment Strategy"
* #primary-outcome-measure "Primary Outcome Measure"
* #secondary-outcome-measure "Secondary Outcome Measure"
* #other-outcome-measure "Other Outcome Measure"