Profile: Measurement
Parent: Observation
Id: measurement
Title: "Measurement"
Description: "Representation of various measurements including (BMI, height, weight, etc.)."
* ^version = "0.1.0"
* ^status = #draft
* code from measurement-vs (required)
* subject only Reference(Patient) 
* subject ^short = "Measurements only apply to a patient."
* value[x] only Quantity or integer
* value[x] ^short = "Quantities with units are strongly preferred." 