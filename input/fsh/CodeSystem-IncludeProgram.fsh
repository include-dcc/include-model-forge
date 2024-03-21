CodeSystem: StudyProgram
Id: study-program
Title: "Study Programs"
Description: "Study Programs"
* ^url = $study_programs
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "INCLUDE FHIR"
* ^content = #fragment
* #kf "Kids First"
* #include "INCLUDE"

ValueSet: StudyProgramVS
Id: study-program-vs
Title: "Study Programs"
Description: "Study Programs"
* ^version = "0.1.0"
* ^status = #active
* include codes from system $study_programs