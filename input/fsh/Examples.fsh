

Instance: patient-0100
InstanceOf: Patient
Usage: #example
Description: "Patient resource used by various examples."
* identifier.system = "www.example.com/identifier"
* identifier.value = "0100"
* gender = #female

Instance: patient-0100-BMI
InstanceOf: Measurement
Usage: #example
Description: "Example BMI measurement."
* subject = Reference(patient-0100)
* code = $measurement_codes#BMI "Body Mass Index"
* valueQuantity = 32.5 'kg/m2' "kg/m2"
* status = #final "Final"

Instance: family-id-observation-F0100
InstanceOf: FamilyIdObservation
Usage: #example
Description: "Example of Family Id Observation."
* subject = Reference(patient-0100)
* code =  $family_types#Control-only "Control Only"
* valueString = "F0100"
* status = #final "Final"

Instance: family-group-FG0100
InstanceOf: FamilyGroup
Usage: #example
Description: "Example of a family group."
* type = #person
* actual = true
* member.entity = Reference(patient-0100)
* code.coding[family-member] = $family-member#FAMMEMB
* code.coding[family-type] = $family_types#Control-only "Control Only"

Instance: biospecimen-0100
InstanceOf: Biospecimen
Usage: #example
Description: "Example of a biospecimen."
* subject = Reference(patient-0100)
* type = $sample_types#Buccal-Cells