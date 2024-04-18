Extension: ResearchStudy
Id: research-study
Title: "Research Study"
Description: "Research study to which this resource is part of"
* insert SetContext(DocumentManifest)
* value[x] only Reference(ResearchStudy)

Profile: StudyDataset
Parent: DocumentManifest
Id: study-dataset
Title: "Research Study Dataset"
Description: "Files that, together, represent a Dataset"
/* We should identify a good term for Dataset */
* type = $include-study-tables#dataset
/* We should reference the population covered by this dataset
*  subject Reference (Group) 
*/
/* Technically, is it a DRS document reference? I don't know. I haven't 
   actually gotten the data and wasn't given enough time to link
   this IG with the other IGs. */
* content only Reference(DocumentReference)

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

Instance: brainpower-example-file
InstanceOf: DocumentReference
Title: "Example File from BrainPower dataset"
Usage: #example
Description: "Example file that might be contained in a dataset"
* status = #current
* docStatus = #final
* securityLabel[0] = $data_access_types#registered
* securityLabel.text = "Registered"
* content[0].attachment.title = "Some Filename"
* content[0].attachment.url = "http://Some/URL"
* content[0].format.display = "csv"
/** What would our types be? CodeableConcept
* type = ???
*/

/** Are there categories associated with this data? 
* category = ???
*/


Instance: brainpower-dataset
InstanceOf: StudyDataset
Title: "BrainPower Dataset"
Usage: #example
Description: "example dataset resource"
* status = #current
* content[0] = Reference(brainpower-example-file)


Instance: brainpower-dataset-details
InstanceOf: StudyDatasetDetails
Title: "BrainPower Dataset Details"
Usage: #example
Description: "Example resource of a dataset details observation"
* status = #final
* code.coding = $include-study-tables#dataset
* component[0].code = $dataset-meta#study-code
* component[0].valueString = "BrainPower"
* component[1].code = $dataset-meta#dataset-name
* component[1].valueString = "BrainPower Health History Data"
* focus = Reference(brainpower-dataset)