CodeSystem: SampleTypes
Id: sample-types
Title: "Sample Types"
Description: "Sample Types Used in INCLUDE Datasets"
* ^url = $sample_types
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "NCPI FHIR Works"
* ^content = #fragment 
* #B-Cells "B Cells"
* #Bone-Marrow "Bone Marrow"
* #Buccal-Cells "Buccal Cells"
* #Buffy-Coat "Buffy Coat"
* #CD4+-Tconv-Cells "CD4+ Tconv Cells"
* #CD8+T-Cells "CD8+ T Cells"
* #Derived-Cell-Line "Derived Cell Line"
* #DNA "DNA"
* #Epstein-Bar-Virus-Immortalized-Cells "Epstein-Barr Virus Immortalized Cells"
* #Graunulocytes "Granulocytes"
* #Monocytes "Monocytes"
* #NK-Cells "NK Cells"
* #PMBCs "PBMCs"
* #Peripheral-Whole-Blood "Peripheral Whole Blood"
* #Plasma "Plasma"
* #Red-Blood-Cells "Red Blood Cells"
* #RNA "RNA"
* #Saliva "Saliva"
* #Solid-Tissue "Solid Tissue"
* #Tregs "Regulatory T Cells"
* #WBCs "White Blood Cells"
* #ATAC-Seq-Sample "ATAC-Seq Sample"
* #Blood-Smear-Slide "Blood Smear Slide"
* #Skin-Tape "Skin Tape"
* #Tongue-Swab "Tongue Swab"

ValueSet: SampleTypesVS
Id: sample-types-vs
Title: "Sample Types Codes"
Description: "A valuse set with all codes used for the expected sample types for INCLUDE/Kids First observations."
* ^version = "0.1.0"
* ^status = #active
* include codes from system $sample_types
