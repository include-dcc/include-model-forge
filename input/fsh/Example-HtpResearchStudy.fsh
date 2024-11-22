Instance: example-study-page-expected-data-category
InstanceOf: StudyPageObservation
Title: "Example Study Page Expected Data Category"
Usage: #example
Description: "Example of an expected data category value-cc object"
* status = #final
* code = $study-page-codes#expected-data-category "Expected Data Category"
* valueCodeableConcept.coding[+] = $expected-data-category#unharmonized-demographic/clinical-data
* valueCodeableConcept.coding[+] = $expected-data-category#harmonized-demographic/clinical-data
* valueCodeableConcept.coding[+] = $expected-data-category#genomics
* valueCodeableConcept.coding[+] = $expected-data-category#Transcriptomics
* valueCodeableConcept.coding[+] = $expected-data-category#proteomics
* valueCodeableConcept.coding[+] = $expected-data-category#metabolomics
* valueCodeableConcept.coding[+] = $expected-data-category#immune-maps
* valueCodeableConcept.coding[+] = $expected-data-category#microbiome
* valueCodeableConcept.coding[+] = $expected-data-category#imaging
* valueCodeableConcept.text = "Unharmonized Demographic/Clinical Data|Harmonized Demographic/Clinical Data|Genomics|Transcriptomics|Proteomics|Metabolomics|Immune Maps|Microbiome|Imaging"

