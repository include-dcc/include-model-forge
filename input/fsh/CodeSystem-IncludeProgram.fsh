CodeSystem: IncludeProgram
Id: include-program
Title: "Include Program"
Description: "Include Program"
* ^url = $include-program
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "INCLUDE FHIR"
* ^content = #fragment
* #kf "Kids First"
* #include "INCLUDE"

ValueSet: IncludeProgramVS
Id: include-program-vs
Title: "Include Program"
Description: "Include Program"
* ^version = "0.1.0"
* ^status = #active
* include codes from system $include-program