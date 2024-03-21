CodeSystem: ExpectedDataCategory
Id: expected-data-category
Title: "Expected Data Category"
Description: "Expected Data Category"
* ^url = $expected-data-category
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "INCLUDE FHIR"
* ^content = #fragment
* #unharmonized-demographic/clinical-data "Unharmonized Demographic/Clinical Data"
* #harmonized-demographic/clinical-data "Harmonized Demographic/Clinical Data"
* #genomics "Genomics"
* #transcriptomics "Transcriptomics"
* #proteomics "Proteomics"
* #metabolomics "Metabolomics"
* #cognitive/behavioral "Cognitive/Behavioral"
* #immune-maps "Immune Maps"
* #imaging "Imaging"
* #microbiome "Microbiome"
* #other "Other"