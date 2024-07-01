CodeSystem: DatasetPageCodes
Id: dataset-page-codes
Title: "Dataset Page Codes"
Description: "Variables associated with table, dataset_meta, from INCLUDE datasets."
* ^content = #complete
* ^count = 18
* ^identifier.system = "https://includedcc.org/fhir/data-dictionary/CodeSystem"
* ^identifier.use = #official
* ^identifier.value = "dataset_meta"
* ^publisher = "NCPI FHIR Working Group"
* ^status = #active
* ^experimental = false
* ^url = $dataset-meta 
* #study-code "Study Code"
* #dataset-name "Dataset Name"
* #dataset-description "Dataset Description"
* #dataset-global-id "Dataset Global ID"
* #dataset-external-id "Dataset External ID"
* #dataset-expected-number-of-participants "Dataset Expected Number of Participants"
* #expected-number-of-files "Expected Number of Files"
* #data-collection-start-year "Data Collection Start Year"
* #data-collection-end-year "Data Collection End Year"
* #data-category "Dataset Data Category"
* #data-type "Dataset Data Type"
* #experimental-strategy "Dataset Experimental Strategy"
* #experimental-platform "Dataset Experimental Platform"
* #publication "Dataset Publication"
* #access-limitations "Access Limitations"
* #access-requirements "Access Requirements"
* #dbGaP "Dataset dbGaP"
* #other-repository "Other Repository"
* #other-access-authority "Other Access Authority"
* #is-harmonized "Is Harmonized"

ValueSet: DatasetPageCodesVS
Id: dataset-page-codes-vs
Title: "Dataset Page Codes"
Description: "Valueset representing columns from the table, dataset_meta, from INCLUDE datasets."
* ^version = "0.1.0"
* ^status = #active
* include codes from system $dataset-meta 