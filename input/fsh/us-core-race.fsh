Instance: us-core-race
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.org/fhir/us/core/SearchParameter/us-core-race"
* version = "6.1.0"
* name = "USCoreRace"
* status = #active
* date = "2022-04-14"
* publisher = "HL7 International - Cross-Group Projects"
* contact.name = "HL7 International - Cross-Group Projects"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "cgp@lists.HL7.org"
* description = "Returns patients with a race extension matching the specified code."
/* If this causes issues, update publisher and try again.  */
* jurisdiction = urn:iso:std:iso:3166#US 
* code = #race
* base = #Patient
* type = #token
* expression = "Patient.extension.where(url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race').extension.value.code"
* xpathUsage = #normal
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY