CodeSystem: StudyPageCodes
Id: study-page-codes
Title: "Study Page Codes"
Description: "Each column from the study page model as terms"
* ^url = $study-page-codes
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "INCLUDE FHIR"
* ^content = #fragment
* #study-code "Study Code"
* #study-title "Study Title"
* #program "Program"
* #study-description "Study Description"
* #principal-investigator-name "Principal Investigator Name"
* #study-contact-name "Study Contact Name"
* #study-contact-institution "Study Contact Institution"
* #study-contact-email "Study Contact Email"
* #virtual-biorepository-email "Virtual Biorepository Email"
* #virtual-biorepository-url "Virtual Biorepository URL"
* #virtual-biorepository-readme "Virtual Biorepository Readme"
* #research-domain "Research Domain"
* #participant-lifespan-stage "Participant Lifespan Stage"
* #selection-criteria "Selection Criteria"
* #study-design "Study Design"
* #clinical-data-source-type "Clinical Data Source Type"
* #expected-data-category "Expected Data Category"
* #study-website "Study Website"
* #dbgap "dbGaP"
* #publication "Publication"
* #study-expected-number-of-participants "Study Expected Number of Participants"
* #guid-type "GUID type"
* #acknowledgements "Acknowledgements"
* #citation-statement "Citation Statement"

ValueSet: StudyPageCodesVS
Id: study-page-codes-vs
Title: "Study Page Codes"
Description: "Valueset represtting the columns from the study page model as terms"
* ^version = "0.1.0"
* ^status = #active
* include codes from system $study-page-codes
