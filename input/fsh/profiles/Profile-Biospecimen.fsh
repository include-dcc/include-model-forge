Profile: Biospecimen
Parent: Specimen
Id: biospecimen
Title: "Biospecimen"
Description: "Representation of biospecimen."
* ^version = "0.1.0"
* ^status = #draft
* status
  * ^short = "Using value to inform the portal whether or not the specimen can be used to do additional assays."
* subject only Reference(Patient)
* type from sample-types-vs (required)