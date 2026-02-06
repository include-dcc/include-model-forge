CodeSystem: InterventionAssignmentStrategy
Id: intervention-assignment-strategy
Title: "Intervention Assignment Strategy"
Description: "Intervention Assignment Strategy Used in INCLUDE Clinical Trials Data"
* ^url = $intervention_assignment_strategy
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment
* #single-group "Single Group"
* #parallel "Parallel"
* #crossover "Crossover"
* #factorial "Factorial"
* #sequential "Sequential"