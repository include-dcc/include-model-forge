Profile: FamilyGroup
Parent: Group
Id: family-group
Title: "Family Group"
Description: "Representation of family group."
* ^version = "0.1.0"
* ^status = #draft
* type = #person
* actual = true 
* member.entity only Reference(Patient)
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #closed
* code.coding ^slicing.ordered = true 
* code.coding ^slicing.description = "Slice for code.coding"
* code.coding contains 
    family-member 1..1 and
    family-type 1..1 
* code.coding[family-member].code = $family-member#FAMMEMB
* code.coding[family-type].code from family-types-vs (required)
