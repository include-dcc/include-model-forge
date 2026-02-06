CodeSystem: InterventionTypes
Id: intervention-types
Title: "Intervention Types"
Description: "Intervention Types Used in INCLUDE Clinical Trials Data"
* ^url = $intervention_types
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #drug "Drug"
* #device "Device"
* #biological/vaccine "Biological/Vaccine"
* #procedure/surgery "Procedure/Surgery"
* #radiation "Radiation"
* #behavioral "Behavioral"
* #dietary-supplement "Dietary Supplement"
* #genetic "Genetic"
* #other "Other"
* #combination-product "Combination Product"
* #diagnostic-test "Diagnostic Test"