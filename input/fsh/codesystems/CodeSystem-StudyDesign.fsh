CodeSystem: StudyDesign
Id: study-design
Title: "Study Designs"
Description: "Study Designs Used in INCLUDE Datasets"
* ^url = $study_design
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #case_control "Case-Control"
* #case_set "Case Set"
* #control_set "Control Set"
* #clinical_trial "Clinical Trial"
* #cross_sectional "Cross-Sectional"
* #family_twins_trios "Family/Twins/Trios"
* #interventional "Interventional"
* #longitudinal "Longitudinal"
* #tumor_vs_matched_normal "Tumor vs Matched Normal"