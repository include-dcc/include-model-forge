Extension: ContactDetailInstitution
Id: contact-detail-institution
Title: "Contact Detail Institution"
Description: "Add institution to a contact detail entry."
* insert SetContext(ContactDetail) 
* value[x] only string 

Extension: StudyProgram
Id: study-program
Title: "Study Program"
Description: "Study Program"
* insert SetContext(ResearchStudy) 
* value[x] only CodeableConcept
* valueCodeableConcept from study-program-vs (required) 

Profile: StudyPageObservation
Parent: Observation
Id: study-page-observation
Title: "Study Page Observation"
Description: "Study Page Observation"
* ^version = "0.1.0"
* ^status = #draft
* code.coding.code from study-page-codes-vs (required)
* value[x] only CodeableConcept or integer or string
/* TODO: We should add support for slicing these by study-page-code and 
restricting the assignment to corresponding codes. But there is no time
for that, right now. */

