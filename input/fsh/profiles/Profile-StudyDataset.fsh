Extension: FileSize
Id: file-size
Title: "File Size"
Description: "KF File Size Extension"
* insert SetContext(DocumentReference)
* value[x] only decimal

Extension: FileSizeUnit
Id: file-size-unit
Title: "File Size Unit"
Description: "File Size Unit"
* insert SetContext(DocumentReference)
* value[x] only string

Extension: ResearchStudyReference
Id: research-study-reference
Title: "Research Study"
Description: "Research study to which this resource is part of"
* insert SetContext(List)
* value[x] only Reference(ResearchStudy)

Extension: StudyCode
Id: study-code
Title: "Study Code"
Description: "Code for the study to which this file is a part of."
* insert SetContext(Extension)
* insert SetContext(DocumentReference.extension)
* value[x] only string

Extension: DatasetName
Id: dataset-name
Title: "Dataset Name"
Description: "Dataset Name a file is associated with"
* insert SetContext(Extension)
* insert SetContext(DocumentReference.extension)
* value[x] only string

Extension: DatasetGlobalId
Id: dataset-global-id
Title: "Dataset Global Id"
Description: "INCLUDE global file identifier, assigned by DCC"
* insert SetContext(Extension)
* insert SetContext(DocumentReference.extension)
* value[x] only string

Extension: DatasetExternalId
Id: dataset-external-id
Title: "Dataset External Id"
Description: "INCLUDE external dataset identifier, assigned by DCC"
* insert SetContext(Extension)
* insert SetContext(DocumentReference.extension)
* value[x] only string

Extension: DatasetParent
Id: dataset-parent
Title: "Dataset Parent"
Description: "Extension containing both the filename IDs"
* insert SetContext(List)
* extension contains study-code named study 0..*
* extension[study] ^short = "Study code"
* extension contains  dataset-name named dataset-name 1..1
* extension[dataset-name] ^short = "Name of dataset, assigned by data contributor"
* extension contains dataset-global-id named global_id 0..1
* extension[global_id] ^short = "INCLUDE dataset global identifier, assigned by DCC"
* extension contains dataset-external-id named external_id 0..1
* extension[external_id] ^short = "INCLUDE dataset external identifier, assigned by DCC"


Profile: StudyDataset
Parent: List
Id: study-dataset
Title: "Research Study Dataset"
Description: "Research Study Dataset"
* identifier 1..*
  * ^short = "Global ID, External ID"
* title 1..1
  * ^short = "Full name of the dataset, provided by contributor"
/* We should identify a good term for Dataset */
* code = $include-study-tables#dataset
/* We should reference the population covered by this dataset
*  subject Reference (Group) 
*/
/* Technically, is it a DRS document reference? I don't know. I haven't 
   actually gotten the data and wasn't given enough time to link
   this IG with the other IGs. */
* entry 1..*
  * item only Reference(DocumentReference)

Profile: StudyDatasetDetails
Parent: Observation
Id: study-dataset-details
Title: "Study Dataset Details"
Description: "Information about a specific grouping of data files"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #openAtEnd
* component ^slicing.ordered = true
* component ^slicing.description = "Slice for dataset variables (codes are column ids)"
/** Each component must have a code that matches the code corresponding to the 
    the data being captured in the value[x] portion of the component. */
* component contains
    dataset-field 1..* 
* component[dataset-field].code from dataset-page-codes-vs (required)
/** In the future, we should point to the corresponding population this
    dataset represents. 
* subject only Reference(Group) -- or relevant profile
*/
* focus only Reference(StudyDataset)

Instance: dsc-study
InstanceOf: ResearchStudy
Usage: #example
Description: "Example resource to be used to show how to link back to a research study"
* status = #active
* title = "DS-Connect Research Study"

Instance: dsc-example-demographic-file
InstanceOf: DocumentReference
Title: "Example Demographics File from DSC dataset"
Usage: #example
Description: "Example demographics that might be contained in a dataset"
* status = #current
* docStatus = #final
* securityLabel[0] = $data_access_types#registered
* securityLabel.text = "Registered"
* content[+].attachment.title = "dsc_demographic_unharmonized_2024-02-26.csv"
* content[=].attachment.url = "https://www.synapse.org/#!Synapse:syn58623423"
* content[=].format.display = "csv"
* extension[DatasetParent]
  * extension[study].valueString = "DSC"
  * extension[dataset-name].valueString = "DS-Connect Unharmonized Demographic/Clinical Data"
  * extension[dataset-external-id].valueString = "DS-Connect-UNHAR (subject to change)"
* extension[file-size]
  * valueDecimal = 625.6
* extension[file-size-unit]
  * valueString = "KB"

Instance: dsc-example-condition-file
InstanceOf: DocumentReference
Title: "Example condition File from DSC dataset"
Usage: #example
Description: "Example condition file that might be contained in a dataset"
* status = #current
* docStatus = #final
* securityLabel[0] = $data_access_types#registered
* securityLabel.text = "Registered"
* content[+].attachment.title = "dsc_ihq_unharmonized_2024-02-26.csv"
* content[=].attachment.url = "https://www.synapse.org/#!Synapse:syn58623422"
* content[=].format.display = "csv"
* extension[DatasetParent]
  * extension[study].valueString = "DSC"
  * extension[dataset-name].valueString = "DS-Connect Unharmonized Demographic/Clinical Data"
  * extension[dataset-external-id].valueString = "DS-Connect-UNHAR (subject to change)"
* extension[file-size]
  * valueDecimal = 3.6
* extension[file-size-unit]
  * valueString = "MB"

Instance: dsc-example-dd-file
InstanceOf: DocumentReference
Title: "Example data-dictionary File from DSC dataset"
Usage: #example
Description: "Example data-dictionary file that might be contained in a dataset"
* status = #current
* docStatus = #final
* securityLabel[0] = $data_access_types#registered
* securityLabel.text = "Registered"
* category[+] = $data_categories#unharmonized_demographic_clinical_data
* content[+].attachment.title = "dsconnect_unharmonized_data_dictionary_20240424.xlsx"
* content[=].attachment.url = "https://www.synapse.org/#!Synapse:syn58623422"
* content[=].format.display = "csv"
* extension[DatasetParent]
  * extension[study].valueString = "DSC"
  * extension[dataset-name].valueString = "DS-Connect Unharmonized Demographic/Clinical Data"
  * extension[dataset-external-id].valueString = "DS-Connect-UNHAR (subject to change)"
* extension[file-size]
  * valueDecimal = 170.4
* extension[file-size-unit]
  * valueString = "KB"


/** What would our types be? CodeableConcept
* type = ???
*/

/** Are there categories associated with this data? 
* category = ???
*/


Instance: dsc-dataset
InstanceOf: StudyDataset
Title: "DSC Dataset"
Usage: #example
Description: "example dataset resource"
* identifier 
  * system = "http://some.url.org/for/global_ids"
  * value = "DM-0123456"
* identifier 
  * system = "http://some.url.org/for/external_ids"
  * value = "DS-Connect-UNHAR (subject to change)"
* status = #current
* title = "DS-Connect Unharmonized Demographic/Clinical Data"
* mode = http://hl7.org/fhir/list-mode#working
* entry[+].item = Reference(dsc-example-demographic-file)
* entry[+].item = Reference(dsc-example-condition-file)
* entry[+].item = Reference(dsc-example-dd-file)



Instance: dsc-dataset-details
InstanceOf: StudyDatasetDetails
Title: "DSC Dataset Details"
Usage: #example
Description: "Example resource of a dataset details observation"
* status = #final
* code.coding = $include-study-tables#dataset
* component[+]
  * code = $dataset-meta#study-code
  * valueString = "DSC"
* component[+]
  * code = $dataset-meta#dataset-name
  * valueString = "DS-Connect Unharmonized Demographic/Clinical Data"
* focus = Reference(dsc-dataset-manifest)


CodeSystem: EnumDataCategory
Id: enum-dataCategory
Title: "Data Category"
Description: "TBD"
* ^url = "https://includedcc.org/fhir/code-systems/enum_dataCategory"
* ^experimental = false
* ^caseSensitive = true
* #unharmonized_demographic_clinical_data "Unharmonized Demographic/Clinical Data"
* #harmonized_demographic_clinical_data "Harmonized Demographic/Clinical Data"
* #genomics "Genomics"
* #transcriptomics "Transcriptomics"
* #proteomics "Proteomics"
* #metabolomics "Metabolomics"
* #cognitive_behavioral "Cognitive/Behavioral"
* #immune_maps "Immune Maps"
* #imaging "Imaging"
* #microbiome "Microbiome"
* #fitness "Fitness"
* #physical_activity "Physical Activity"
* #other "Other"


ValueSet: EnumDataCategoryVS
Id: enum-dataCategory-vs
Title: "Data Category"
Description: "None"
* ^experimental = false
* include codes from system https://includedcc.org/fhir/code-systems/enum_dataCategory

Logical: IncludeDatasetManifest
Id: IncludeLogicalDatasetManifest
Title: "Include Logical Model for Dataset Manifest"
Description: "Mapping information for files in Dataset"
* studyCode 1..1 string "Unique identifer for the study (generally a short acronym)"
* datasetName 1..1 string "Full name of the dataset, provided by contributor"
* datasetGlobalId 0..1 string "Unique Global ID for dataset, generated by DCC"
* datasetExternalId 0..1 string "Unique identifier or code for dataset, if provided by contributor"
* fileName 1..1 string "Name of file, assigned by data contributor"
* fileGlobalId 1..1 string "INCLUDE global file identifier, assigned by DCC"

Logical: IncludeDataset
Id: IncludeLogicalDataset
Title: "Information about a specific grouping of data files"
Description: "Information about a specific grouping of data files"
* studyCode 1..1 string "Unique identifer for the study (generally a short acronym)"
* datasetName 1..1 string "Full name of the dataset, provided by contributor"
* datasetDescription 0..1 string "Brief additional notes about the dataset (1-3 sentences) that are not already captured in the other fields"
* datasetGlobalId 0..1 string "Unique Global ID for dataset, generated by DCC"
* datasetExternalId 0..1 string "Unique identifier or code for dataset, if provided by contributor"
* expectedNumberOfParticipants 1..1 integer ""
* expectedNumberOfFiles 0..1 integer "Expected number of files associated with this dataset, including dictionaries. If additional explanation is needed, please add to Dataset Description field."
* dataCollectionStartYear 0..1 string "Year that data collection started"
* dataCollectionEndYear 0..1 string "Year that data collection ended"
* dataCategory 0..1 code ""
* dataCategory from EnumDataCategoryVS (extensible)
* dataType 0..1 string ""
* experimentalStrategy 0..1 string ""
* experimentalPlatform 0..1 string "Specific platform used to perform experiment; pipe-separated if multiple (e.g. SOMAscan, MSD, Luminex, Illumina)"
* publication 0..1 uri ""
* accessLimitations 0..1 string "Data access limitations, as defined in the GA4GH Data Use Ontology (DUO; can list more than one, pipe separated)"
* accessRequirements 0..1 string "Data access requirements, as defined in the GA4GH Data Use Ontology (DUO; can list more than one, pipe separated)"
* dbgap 0..1 string ""
* otherRepository 0..1 uri "URL if dataset is already deposited in a public repository other than dbGaP (e.g. LONI, Metabolomics Workbench, etc.)"
* otherAccessAuthority 0..1 string "Email or URL for dataset's Access Authority, if not dbGaP"
* isHarmonized 0..1 boolean "For omics datasets, is this Dataset already harmonized and available in the INCLUDE Data Hub?"

