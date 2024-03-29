CodeSystem: MeasurementCodes
Id: measurement-codes
Title: "Measurement Codes"
Description: "A complete set of codes used for the expected measurement types for INCLUDE/Kids First observations.
"
* ^url = $measurement_codes
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "INCLUDE FHIR"
* ^content = #fragment
* #Hemoglobin-level-at-birth "Hemoglobin level at birth"
* #White-blood-cell-count-at-birth "White blood cell count at birth"
* #Platelet-count-at-birth "Platelet count at birth"
* #Peripheral-blood-blast-percentage-at-birth "Peripheral blood blast percentage at birth"
* #Hematocrit "Hematocrit"
* #Gestational-age-at-birth "Gestational age at birth"
* #Birth-weight "Birth weight"
* #Visit-count-for-year "In the past 12 months, how many times has the participant been admitted to a hospital overnight or longer?"
* #Weight "Body Weight"
* #Height "Body Height"
* #BMI "Body Mass Index"

ValueSet: MeasurementVS
Id: measurement-vs
Title: "Measurement Codes"
Description: "A value set with all codes used for the expected measurement types for INCLUDE/Kids First observations."
* ^version = "0.1.0"
* ^status = #active
* include codes from system $measurement_codes