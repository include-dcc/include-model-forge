CodeSystem: PrimaryPurpose
Id: primary-purpose
Title: "Primary Purpose"
Description: "Primary Purpose Used in INCLUDE Clinical Trials Data"
* ^url = $primary_purpose
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #treatment "Treatment"
* #prevention "Prevention"
* #diagnostic "Diagnostic"
* #supportive-care "Supportive Care"
* #screening "Screening"
* #health-services-research "Health Services Research"
* #basic-science "Basic Science"
* #device-feasibility "Device Feasibility"
* #other "Other"