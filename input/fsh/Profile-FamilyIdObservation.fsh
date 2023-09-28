Profile: FamilyIdObservation
Parent: Observation
Id: family-id-observation
Title: "Family Id Observation"
Description: "Representation of family id observations."
* ^version = "0.1.0"
* ^status = #draft
* code from family-types-vs (required)
* subject only Reference(Patient)
* value[x] only string
* value[x] ^short = "Family Id"
