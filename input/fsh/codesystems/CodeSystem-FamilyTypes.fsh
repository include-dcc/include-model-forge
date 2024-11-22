CodeSystem: FamilyTypes
Id: family-types
Title: "Family Types"
Description: "Types of Families Used in INCLUDE Dataset"
* ^url = $family_types
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #Control-only "Control Only"
* #Duo "Duo"
* #Other "Other"
* #Proband-only "Proband Only"
* #Trio "Trio"
* #Trio+ "Trio+"

ValueSet: FamilyTypesVS
Id: family-types-vs
Title: "Family Types Codes"
Description: "A value set with all codes used for the expected family types for INCLUDE/Kids First observations."
* ^version = "0.1.0"
* ^status = #active
* include codes from system $family_types